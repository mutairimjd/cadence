class AddCatogrieRefToSongs < ActiveRecord::Migration[5.2]
  def change
    add_reference :songs, :catogrie, foreign_key: true
  end
end
