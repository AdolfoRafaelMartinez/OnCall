class CreateOffices < ActiveRecord::Migration
  def self.up
    create_table :offices do |t|
      t.string :name
      t.boolean :sun
      t.boolean :mon
      t.boolean :tue
      t.boolean :wed
      t.boolean :thu
      t.boolean :fri
      t.boolean :sat
      t.string :from
      t.string :to
      t.string :zone
      t.string :phone
      t.string :notes

      t.timestamps
    end
  end

  def self.down
    drop_table :offices
  end
end
