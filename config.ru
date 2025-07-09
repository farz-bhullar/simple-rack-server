require_relative "application"
require_relative "middleware/request_timer_middleware"

use RequestTimerMiddleware
run Application.new