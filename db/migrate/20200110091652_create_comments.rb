class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.references :user
      t.references :post
      t.text :comment_text

      t.timestamps
    end
  end
end
