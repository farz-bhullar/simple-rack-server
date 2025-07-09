class Application

  def call(env)
    request = Rack::Request.new(env)
    params_as_text = request.params.any? ? "<p>Params: #{request.params}</p>" : ""

    response_body = <<~HTML
      <h1>Hello, Folk!</h1>
      <p>You visited: #{request.path}</p>
      #{params_as_text}
    HTML

    [
      200,
      { 'Content-Type' => 'text/html' },
      [ response_body ]
    ]
  end

end