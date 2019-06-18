require 'sinatra'
require 'sinatra/reloader'


get '/' do
  erb :index
end

post '/' do
  if params[:input_usuario] == params[:input_usuario].upcase
    <<-HTML
    <h1>Ahh sí, manzana!</h1>
    HTML
  else
  	<<-HTML
   <h1>Habla mas duro mijito</h1>
   HTML
  end
  #redirect "/?abuela=#{@abuela}"
end