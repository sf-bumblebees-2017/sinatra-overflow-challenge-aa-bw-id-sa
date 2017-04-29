get "/" do
  @questions = Question.all
  erb :'index'
end

get "/questions" do
  redirect '/'
end

get "/questions/:id" do
  @question = Question.find(params[:id])
  if current_user
    erb :'/questions/show'
  else
    redirect '/'
  end
end

get "/questions/new" do
  "hello"
end

post "/questions" do
  if current_user
    Question.create(
      title: params[:title],
      body: params[:body],
      user_id: current_user.id
      )
    redirect '/'
  else
    redirect '/'
  end
end



