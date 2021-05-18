class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
        t.string :title
        t.text :catch
        t.text :concept
        t.references :user, foreign_key: true
      t.timestamps
    end
  end
end