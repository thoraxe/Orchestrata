class CreateStatistics < ActiveRecord::Migration
  def self.up
    create_table :statistics do |t|
      t.decimal :value
      t.integer :application_id
      t.string :name
      t.timestamps
    end
  end
  
  def self.down
    drop_table :statistics
  end
end
