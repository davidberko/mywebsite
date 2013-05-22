class CreateCommenters < ActiveRecord::Migration
  def change
    create_table :commenters do |t|
      t.string :name
      t.text :comment
      t.integer :user_id

      t.timestamps
    end
  end
end
