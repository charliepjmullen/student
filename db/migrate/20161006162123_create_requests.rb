class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :job_id
      t.string :can_id

      t.timestamps
    end
  end
end
