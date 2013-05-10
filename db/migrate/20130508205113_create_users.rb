class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :title
      t.text :story

      t.timestamps
    end
  end
end
