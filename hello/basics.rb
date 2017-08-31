require 'rubygems'
require 'sinatra'


get '/' do
  "Hello, World!"
end

get '/about' do
  'A little about me.'
end

get '/projects' do
  'These are my Ruby projects.'
end

get '/hello/:name/:city' do
  params[:name]
  "Hello There, #{params[:name]} from #{params[:city]} "
end

get '/more/*' do
  params[:splat]
  'Hola, y lo que quiras añadir ... #{params[:splat]}'
end

# for sending a form
get '/form' do
  erb :form
end

post '/form' do
  "You said '#{params[:message]}'"
end
# for sending a form

#encrypt the info
get '/secret' do
  erb :secret
end

post '/secret' do
  params[:secret].reverse
end

# other
get '/decrypt/:secret' do
  params[:secret].reverse
end

not_found do
  status 404
  'not found'
end
