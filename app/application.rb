class Application

  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item_name = req.path.split("/item/").last
      item = @@items.find {|i| i.name == item_name}

      resp.write item.name
    else
      resp.write "Page Not Found"
      resp.status = 404
    end #if path match /items/
  end #call

end #Application
