class AddDtoAddress < ActiveRecord::Migration[6.0]
  def change
    rename_column :flats, :adress, :address
  end
end
