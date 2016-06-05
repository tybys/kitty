class CreateCats < ActiveRecord::Migration
  def up
    add_attachment :cat, :picture
  end

  def down
    remove_attachment :cat, :picture
  end

  def change
    create_table :cats do |t|
      t.string :name
      t.text :text
      t.integer :user_id
      t.attachment :picture

      #t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
