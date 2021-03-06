class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :type
      t.string :name
      t.string :email
      t.timestamps
    end
    add_index :people, :type
  end

  def self.down
    drop_table :people
  end
end
