class Application
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path=="/items/<ITEM NAME>"
      resp.write "3.42"
    else
      resp.write "Item not found"
      resp.status = 404
    end
 
    resp.finish
  end
end