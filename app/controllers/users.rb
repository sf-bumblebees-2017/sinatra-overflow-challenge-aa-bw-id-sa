get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    redirect '/sessions/new'
  else
    erb :'/users/new'
  end
end

# get '/users/:id' do
#   @user = User.find(params[:id])
#   redirect '/sessions/new' if logged_in?
#   erb :'/'
# end
