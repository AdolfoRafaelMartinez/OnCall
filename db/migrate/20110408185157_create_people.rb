class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :name
      t.string :work
      t.string :nonwork
      t.references :group

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
