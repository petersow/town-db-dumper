class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :first_name, :null => false
      t.string :family_name, :null => false
      t.string :date_of_birth, :null => false
      t.string :current_action, :null => false
    end
  end

  def self.down
    drop_table :people
  end
end

