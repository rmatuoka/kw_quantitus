class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.datetime :start_date
      t.string :name
      t.string :link
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
