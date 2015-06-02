class AddObjectiveColumnToMissions < ActiveRecord::Migration
  def change
    add_column :missions, :objective, :text
  end
end
