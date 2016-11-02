class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :can_name
      t.string :can_surname
      t.date :dob
      t.string :college
      t.integer :college_year
      t.integer :phone_num
      t.string :can_email
      t.string :address
      t.text :experience
      t.string :password_digest

      t.timestamps
    end
  end
end
