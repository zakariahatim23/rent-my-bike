class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.string :title
      t.text :description
      t.string :location
      t.string :category
      t.decimal :price
      t.datetime :listed_at
      t.string :photo
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
