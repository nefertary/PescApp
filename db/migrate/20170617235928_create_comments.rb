class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user
      t.timestamp :date
      t.text :body
      t.string :image
      t.references :notice, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
