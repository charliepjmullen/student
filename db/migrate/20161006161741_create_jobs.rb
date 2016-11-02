class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :employer
      t.string :sector
      t.text :experience_req
      t.text :job_info

      t.timestamps
    end
  end
end
