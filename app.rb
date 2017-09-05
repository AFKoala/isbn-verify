require 'sinatra'
require_relative 'verify2.rb'
enable :sessions

get '/' do
    erb :home
end

post '/isbn' do

end