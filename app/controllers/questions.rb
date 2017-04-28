get "/" do
  @questions = Question.all
  erb :'index'
end

get "/questions" do
  redirect '/'
end

get "/questions/:id" do
  @question = Question.find(params[:id])
  erb :'/questions/show'
end

get "/questions/new" do
  "hello"
end

post "/questions" do
  Question.create(
    title: params[:title],
    body: params[:body],
    user_id: current_user.id
    )
  redirect '/'
end



