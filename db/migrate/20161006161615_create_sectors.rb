class CreateSectors < ActiveRecord::Migration
  def change
    create_table :sectors do |t|
      t.string :sector_name
      t.integer :num_of_jobs

      t.timestamps
    end
  end
end
