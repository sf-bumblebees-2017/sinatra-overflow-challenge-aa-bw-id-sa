post "/votes" do
  if Vote.find_by(params[:vote])
    new_vote = Vote.new(params[:vote])
    new_vote.assign_attributes(upvote: params[:vote][:upvote])
  else
    new_vote = Vote.new(params[:vote])
    new_vote.save
  end
  redirect "/questions/#{new_vote.votable.id}"
end
