class CreateTeams < ActiveRecord::Migration
  def self.up
    create_table :teams do |t|
      t.string :name
      t.string :company
      t.string :position
      t.string :quote
      t.text :professional
      t.text :academic
      t.timestamps
    end
  end

  def self.down
    drop_table :teams
  end
end
