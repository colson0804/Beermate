class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :img
      t.string :url
      t.text :content

      t.timestamps null: false
    end
  end
end
