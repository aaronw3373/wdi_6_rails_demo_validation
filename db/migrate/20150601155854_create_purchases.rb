class CreatePurchases < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :name
      t.decimal :price
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
