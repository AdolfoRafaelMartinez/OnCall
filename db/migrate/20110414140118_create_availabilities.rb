class CreateAvailabilities < ActiveRecord::Migration
  def self.up
    create_table :availabilities do |t|
      t.references :person
      t.date :fromDay
      t.date :toDay
      t.time :fromTime
      t.time :toTime

      t.timestamps
    end
  end

  def self.down
    drop_table :availabilities
  end
end
