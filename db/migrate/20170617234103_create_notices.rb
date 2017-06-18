class CreateNotices < ActiveRecord::Migration
  def change
    create_table :notices do |t|
      t.string :user
      t.timestamp :date
      t.text :body
      t.string :image

      t.timestamps null: false
    end
  end
end
