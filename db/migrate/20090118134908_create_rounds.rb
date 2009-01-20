class CreateRounds < ActiveRecord::Migration
  def self.up
    create_table :rounds do |t|
      t.references :match
      t.integer :away_score
      t.integer :home_score
    end
  end

  def self.down
    drop_table :rounds
  end
end
