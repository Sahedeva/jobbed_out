User.destroy_all
JobPosting.destroy_all
Comment.destroy_all

user = User.create([{first_name: "Mickey", last_name: "Mouse", email: "mickeymouse@email.com"},
					{first_name: "Minnie", last_name: "Mouse", email: "minniemouse@email.com"},
					{first_name: "Donald", last_name: "Duck", email: "donaldduck@email.com"}])

# jop_posting = JobPosting.create([{company_name: "Disney", job_title: "Cartoon Character", posting_url: "http://disneycareers.com/en/default/", user_id: 1},
# 						{company_name: "Pixar", job_title: "Animated Star", posting_url: "http://www.pixar.com/careers", user_id: 2},
# 						{company_name: "Nickelodeon", job_title: "Cartoon Character", posting_url: "http://www.nickanimationstudio.com/jobs", user_id: 3},
# 						{company_name: "Disney", job_title: "Manager", posting_url: "http://disneycareers.com/en/default/", user_id: 1}])

# comments = Comment.create ([{comment: "This looks like a super-ific job!", user_id: 1, job_posting_id: 1},
# 							{comment: "Insider info: only hiring in company.", user_id: 2, job_posting_id: 2},])


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
