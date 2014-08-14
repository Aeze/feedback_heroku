class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.text :content
      t.integer :admin_id
      t.date :date_posted

      t.timestamps
    end
  end
end
