require 'sinatra'
require_relative 'verify2.rb'
enable :sessions

get '/' do
    erb :home
end

post '/isbn' do
    session[:isbnnumber10] = params[:isbnnumber10]
    session[:isbnnumber13] = params[:isbnnumber13]
end