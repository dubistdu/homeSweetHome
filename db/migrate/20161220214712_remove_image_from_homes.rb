class RemoveImageFromHomes < ActiveRecord::Migration[5.0]
  def change
    remove_column :homes, :image, :string
  end
end
