require 'sinatra'

users = ['mined', 'minds', 'murphy']
passwords = ['user1', 'user2', 'user3']

get '/' do
	erb :home
end

post '/login' do
	user = params[:user]
	pass = params[:pass]
	unless users.include?(user) && passwords.include?(pass)
		redirect '/error?user=' + user + '&pass=' + pass
	else
		redirect '/correct?user=' + user + '&pass=' + pass
	end
end

get '/error' do
	user = params[:user]
	pass = params[:pass]
	erb :error, :locals => {:user => user, :pass => pass}
end

post '/error' do
	user = params[:user]
	pass = params[:pass]
	redirect '/login?user=' + user + '&pass=' + pass
end

get '/correct' do
	user = params[:user]
	pass = params[:pass]
	first = params[:first]
	last = params[:last]
	erb :correct, :locals => {:user => user, :pass => pass, :first => first, :last => last}
end

post '/correct' do
	user = params[:user]
	pass = params[:pass]
	first = params[:first]
	last = params[:last]
	redirect 
end