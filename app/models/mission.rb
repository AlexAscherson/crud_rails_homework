class Mission < ActiveRecord::Base
  def index
    @mission = Mission.all
    # takes all the planets from db and stores as instance variable.
    # come back as array of objects
    
      end
end