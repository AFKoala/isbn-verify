require 'sinatra'
require_relative 'verify.rb'
enable :sessions

get '/' do
    erb :home
end

post '/verify' do
    session[:user_given_isbn] = params[:user_given_isbn]
    session[:isbn_truth] = isbn_function(session[:user_given_isbn])
    session[:result_message] = isbn_results(session[:isbn_truth])
    session[:isbn_bucket_truth] = push_to_bucket(session[:user_given_isbn], session[:isbn_truth])
    session[:get_file] = get_file()
end