class CreateMatches < ActiveRecord::Migration
  def self.up
    create_table :matches do |t|
      t.string :state, :default => 'Upcoming'
      t.timestamp :stated_at
      t.timestamps
    end
  end

  def self.down
    drop_table :matches
  end
end
