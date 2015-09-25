class AddUserIdToJobPostings < ActiveRecord::Migration
  def change
  	add_reference :job_postings, :user, index: true, foreign_key: true
  end
end
