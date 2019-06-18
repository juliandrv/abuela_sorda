require 'sinatra'
require 'sinatra/reloader'


get '/' do
  @abuela = params[:abuela]
  # mira en views/index.erb para ver que hay en esta vista
  erb :index
end

post '/' do
  if params[:input_usuario] == params[:input_usuario].upcase
    @abuela = "<h1>Ahh sí, manzana!</h1"
  else
    @abuela = "<h1>Habla mas duro mijito</h1>"
  end
  #redirect "/?abuela=#{@abuela}"
end