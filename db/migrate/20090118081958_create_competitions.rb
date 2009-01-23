class CreateCompetitions < ActiveRecord::Migration
  def self.up
    create_table :competitions do |t|
      t.string :type
      t.references :match
      t.string :state
      t.timestamp :stated_at
      t.timestamps
    end
    add_index :competitions, :match_id
    add_index :competitions, :type
  end

  def self.down
    drop_table :competitions
  end
end
