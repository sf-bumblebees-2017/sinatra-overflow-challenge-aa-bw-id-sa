post "/answers" do
  p params
  Answer.create(
    body: params[:body],
    user_id: current_user.id,
    question_id: params[:question_id])
  redirect '/'
end
