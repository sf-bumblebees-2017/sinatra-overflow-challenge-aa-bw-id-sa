User.create(username: "stacyareas", password: "poop")

User.create(username: "poop", password: "poop")

Question.create(
	title: "How to do something, HELP!",
	body: "I am confused and not so smart tell me things",
	user_id: 1)

Answer.create(
	body: "You are so smart you should google things!",
	question_id: 1,
	user_id: 2)

Comment.create(
	body: "Thanks that was super duper helpful",
	user_id: 1,
	commentable_id: 1,
	commentable_type: "Answer")

Vote.create(
	user_id: 1,
	votable_id: 1,
	votable_type: "Answer",
	upvote: 1
	)
