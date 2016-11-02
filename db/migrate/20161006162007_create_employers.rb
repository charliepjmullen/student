class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :emp_name
      t.string :location
      t.string :emp_sector
      t.string :emp_email
      t.string :password_digest

      t.timestamps
    end
  end
end
