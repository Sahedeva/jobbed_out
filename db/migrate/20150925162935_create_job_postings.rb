class CreateJobPostings < ActiveRecord::Migration
  def change
    create_table :job_postings do |t|
    	t.string :company_name, null: false
    	t.string :job_title, null: false
    	t.string :posting_url, null: false
      t.datetime :date_time

      t.timestamps null: false


    end
    add_index :job_postings, :company_name
    add_index :job_postings, :job_title 
  end
end
