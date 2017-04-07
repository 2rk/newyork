require 'sinatra'
require 'sinatra/reloader'
require 'json'

get '/' do
  erb :default
end

get '/hello'  do
  "Hello #{params[:name]}"
end

get '/data' do
  { name: params[:name], greeting: "hello" }.to_json
end

post '/data' do
  { name: params['name'].reverse }.to_json
end