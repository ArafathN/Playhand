class AddPictureToToys < ActiveRecord::Migration[6.0]
  def change
    add_column :toys, :picture, :string
  end
end
