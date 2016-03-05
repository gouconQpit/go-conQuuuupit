class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.integer :area_id
      t.integer :average_age
      t.string :pr_text
      t.integer :match_log_id
      t.integer :time_id
      t.integer :rate

      t.timestamps null: false
    end
  end
end
