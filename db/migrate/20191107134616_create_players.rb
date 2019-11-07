class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :name
      t.string :lastname
      t.string :post
      t.integer :age
      t.string :image

      t.timestamps
    end
  end
end
