class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.string :img
      t.string :url
      t.text :text
      t.float :ABV
      t.float :IBU
      t.float :SRM
      t.float :OG

      t.timestamps null: false
    end
  end
end
