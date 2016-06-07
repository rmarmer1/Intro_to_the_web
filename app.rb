#routing file
require 'sinatra'

get '/' do
	"Hello World & Hello Kitty!"
end

get '/secret' do
	"secret route"
end

get '/cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end
