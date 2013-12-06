class CreateWinks < ActiveRecord::Migration
  def change
    create_table :winks do |t|
      t.integer :winker_id
      t.integer :winked_at_id

      t.timestamps
    end
  end
end
