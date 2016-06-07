require 'sinatra'

get '/' do
	"Hello World & Hello Kitty!"
end

get '/secret' do
	"secret route"
end

get '/cat' do
	"<html>

	<div style='border: 3px dashed red'>
	<img src='http://bit.ly/1eze8aE'>
	</div></html>"
end