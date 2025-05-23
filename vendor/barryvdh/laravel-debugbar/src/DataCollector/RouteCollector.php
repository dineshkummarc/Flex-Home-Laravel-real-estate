<?php

namespace Barryvdh\Debugbar\DataCollector;

use Closure;
use DebugBar\DataCollector\DataCollector;
use DebugBar\DataCollector\Renderable;
use Illuminate\Routing\Router;
use Illuminate\Support\Facades\Config;

/**
 * Based on Illuminate\Foundation\Console\RoutesCommand for Taylor Otwell
 * https://github.com/laravel/framework/blob/master/src/Illuminate/Foundation/Console/RoutesCommand.php
 *
 */
class RouteCollector extends DataCollector implements Renderable
{
    /**
     * The router instance.
     *
     * @var \Illuminate\Routing\Router
     */
    protected $router;

    public function __construct(Router $router)
    {
        $this->router = $router;
    }

    /**
     * {@inheritDoc}
     */
    public function collect()
    {
        $route = $this->router->current();
        return $this->getRouteInformation($route);
    }

    /**
     * Get the route information for a given route.
     *
     * @param  \Illuminate\Routing\Route $route
     * @return array
     */
    protected function getRouteInformation($route)
    {
        if (!is_a($route, 'Illuminate\Routing\Route')) {
            return [];
        }
        $uri = head($route->methods()) . ' ' . $route->uri();
        $action = $route->getAction();

        $result = [
           'uri' => $uri ?: '-',
        ];

        $result = array_merge($result, $action);
        $uses = $action['uses'] ?? null;
        $controller = is_string($action['controller'] ?? null) ? $action['controller'] :  '';

        if (request()->hasHeader('X-Livewire')) {
            try {
                $component = request('components')[0];
                $name = json_decode($component['snapshot'], true)['memo']['name'];
                $method = $component['calls'][0]['method'];
                $class = app(\Livewire\Mechanisms\ComponentRegistry::class)->getClass($name);
                if (class_exists($class) && method_exists($class, $method)) {
                    $controller = $class . '@' . $method;
                    $result['controller'] = ltrim($controller, '\\');
                }
            } catch (\Throwable $e) {
                //
            }
        }

        if (str_contains($controller, '@')) {
            list($controller, $method) = explode('@', $controller);
            if (class_exists($controller) && method_exists($controller, $method)) {
                $reflector = new \ReflectionMethod($controller, $method);
            }
            unset($result['uses']);
        } elseif ($uses instanceof \Closure) {
            $reflector = new \ReflectionFunction($uses);
            $result['uses'] = $this->formatVar($uses);
        } elseif (is_string($uses) && str_contains($uses, '@__invoke')) {
            if (class_exists($controller) && method_exists($controller, 'render')) {
                $reflector = new \ReflectionMethod($controller, 'render');
                $result['controller'] = $controller . '@render';
            }
        }

        if (isset($reflector)) {
            $filename = $this->normalizeFilePath($reflector->getFileName());

            if ($link = $this->getXdebugLink($reflector->getFileName(), $reflector->getStartLine())) {
                $result['file'] = sprintf(
                    '<a href="%s" onclick="%s" class="phpdebugbar-widgets-editor-link">%s:%s-%s</a>',
                    $link['url'],
                    $link['ajax'] ? 'event.preventDefault();$.ajax(this.href);' : '',
                    $filename,
                    $reflector->getStartLine(),
                    $reflector->getEndLine()
                );

                if (isset($result['controller'])) {
                    $result['controller'] .= '<a href="'.$link['url'].'" class="phpdebugbar-widgets-editor-link"></a>';
                }
            } else {
                $result['file'] = sprintf('%s:%s-%s', $filename, $reflector->getStartLine(), $reflector->getEndLine());
            }
        }

        if ($middleware = $this->getMiddleware($route)) {
            $result['middleware'] = $middleware;
        }

        return array_filter($result);
    }

    /**
     * Get middleware
     *
     * @param  \Illuminate\Routing\Route $route
     * @return string
     */
    protected function getMiddleware($route)
    {
        return implode(', ', array_map(function ($middleware) {
            return $middleware instanceof Closure ? 'Closure' : $middleware;
        }, $route->gatherMiddleware()));
    }

    /**
     * {@inheritDoc}
     */
    public function getName()
    {
        return 'route';
    }

    /**
     * {@inheritDoc}
     */
    public function getWidgets()
    {
        $widgets = [
            "route" => [
                "icon" => "share",
                "widget" => "PhpDebugBar.Widgets.HtmlVariableListWidget",
                "map" => "route",
                "default" => "{}"
            ]
        ];
        return $widgets;
    }

    /**
     * Display the route information on the console.
     *
     * @param  array $routes
     * @return void
     */
    protected function displayRoutes(array $routes)
    {
        $this->table->setHeaders($this->headers)->setRows($routes);

        $this->table->render($this->getOutput());
    }
}
