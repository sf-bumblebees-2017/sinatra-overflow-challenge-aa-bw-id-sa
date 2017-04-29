post "/answers" do
  p params
  answer = Answer.create(
    body: params[:body],
    user_id: current_user.id,
    question_id: params[:question_id])
  redirect "/questions/#{answer.question.id}"
end
