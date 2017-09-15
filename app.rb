require 'sinatra'
require_relative 'verify.rb'
enable :sessions

get '/' do
    erb :home
end

post '/isbn' do

end