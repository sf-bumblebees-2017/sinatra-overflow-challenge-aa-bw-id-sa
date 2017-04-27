get '/sessions/new' do 
  erb :'sessions/new'
end 

post '/sessions' do 
  @user = User.find_by(params[:username])
    if @user && @user.password == params[:password]
      login(@user)
      redirect '/'
    else
      erb :'sessions/new'
    end 
end 


delete '/sessions' do 
  logout
  redirect '/'
end 

