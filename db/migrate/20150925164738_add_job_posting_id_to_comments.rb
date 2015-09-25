class AddJobPostingIdToComments < ActiveRecord::Migration
  def change
  	add_reference :comments, :job_posting, index: true, foreign_key: true
  end
end
