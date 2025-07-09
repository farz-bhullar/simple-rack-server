class RequestTimerMiddleware

  def initialize(app)
    @app = app
  end

  def call(env)
    start_time = Time.now
    app_response = @app.call(env)
    end_time = Time.now
    duration = (end_time - start_time) * 1000.0 # ms
    puts "[#{env['PATH_INFO']} #{env['REQUEST_METHOD']}] Completed in #{duration.round(2)} ms"
    app_response
  end

end