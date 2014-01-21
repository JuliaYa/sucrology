class CreateSugarBags < ActiveRecord::Migration
  def change
    create_table :sugar_bags do |t|
      t.string :name
      t.integer :bags_count, default: 0
      t.datetime :gathered_at
      t.string :from
      t.text :comment
      t.timestamps
    end
  end
end
