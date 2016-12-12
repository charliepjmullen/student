class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :job_id
      t.string :candidate_id
      t.text :content
      t.timestamps
    end
  end
end
