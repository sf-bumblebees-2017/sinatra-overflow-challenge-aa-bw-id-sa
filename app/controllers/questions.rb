get "/" do 
  @questions = Question.all
  erb :'index'
end 

get "/questions/:id" do 
  @questions = Question.find_by(params[:id])
  erb :'/questions/show'
end 

# doin stuff

