class CreateClocks < ActiveRecord::Migration
  def self.up
    create_table :clocks do |t|
      t.integer :minute, :null => false
      t.integer :hour, :null => false
      t.integer :day, :null => false
      t.integer :month, :null => false
      t.integer :year, :null => false
    end
  end

  def self.down
    drop_table :clocks
  end
end

