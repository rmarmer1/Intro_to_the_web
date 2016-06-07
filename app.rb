#routing file
require 'sinatra'

get '/' do
	"Hello World & Hello Kitty!"
end

get '/secret' do
	"secret route"
end

get '/random-cat' do
	@name = ["Amigo", "Oscar", "Viking"].sample
	erb(:index)
end

# add '?name=paul' to end of URL 
post '/named-cat' do
	p params				# prints '{"name"=>"paul"}' to console
	@name = params[:name]
  @age = params[:age]
	erb(:index)
end

# # add '?name=paul' to end of URL 
# post '/named-cat' do
#   p params        # prints '{"name"=>"paul"}' to console
#   @name = params[:name]
#   @age = params[:age]
#   erb(:index)
# end

get '/cat-form' do
  p params
  @name = params[:name]
  @age = params[:age]
  erb(:cat_form)
end

# post '/cat-form' do
#   p params
#   @name = params[:name]
#   @age = params[:age]
#   erb(:cat_form)
# end

