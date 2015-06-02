class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :name
      t.text :image
      t.text :outcome
      t.integer :mass
      t.timestamps

    end
  end
end
