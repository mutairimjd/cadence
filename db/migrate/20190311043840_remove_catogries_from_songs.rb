class RemoveCatogriesFromSongs < ActiveRecord::Migration[5.2]
  def change
    remove_column :songs, :catogries
  end
end
