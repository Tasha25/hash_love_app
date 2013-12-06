class CreateWinks < ActiveRecord::Migration
  def change
    create_table :winks do |t|
      t.integer :user_id
      t.integer :winked_at_id
      t.boolean :is_match

      t.timestamps
    end
  end
end
