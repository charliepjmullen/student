class AddPictureToSector < ActiveRecord::Migration
  def change
    add_column :sectors, :picture, :string
  end
end
