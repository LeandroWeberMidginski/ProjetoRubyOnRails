class CreateAlbuns < ActiveRecord::Migration[7.0]
  def change
    create_table :albuns do |t|
      t.string :artist
      t.string :Album Name
      t.integer :year

      t.timestamps
    end
  end
end
