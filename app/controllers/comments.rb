post "/comments" do
  new_comment = Comment.new(params[:comment])
  if new_comment.save
    if new_comment.commentable_type == "Answer"
      redirect "/questions/#{new_comment.commentable.question_id}"
    else
      redirect "/questions/#{new_comment.commentable.id}"
    end
  else
    redirect '/'
  end
end
