class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
    else
      resp.write "Page Not Found"
      resp.status =
  end #call

end #Application
