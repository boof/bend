class CreateMemberships < ActiveRecord::Migration
  def self.up
    create_table :memberships do |t|
      t.string :disposition, :default => 'Member'
      t.references :player
      t.references :team
      t.timestamps
    end
    add_index :memberships, [:player_id, :team_id], :unique => true
  end

  def self.down
    drop_table :memberships
  end
end
