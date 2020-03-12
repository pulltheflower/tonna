class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.integer :state
      t.integer :status
      t.string :category
      t.string :fake_url

      t.timestamps
    end
  end
end
