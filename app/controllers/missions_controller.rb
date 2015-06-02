class MissionsController < ApplicationController
  
  # Params is talking to the database as well
# but here we are defining what is going to happen when our 
# functions are called.  Function is called, controller handles
# the call or action to the database and sends back the response.


  def index
    @missions = Mission.all
  end
  # this gets all this items from db as object?
  def show
    @mission = Mission.find(params[:id])
    end
 # this gets the id as a param from the url and returns that row as object
  def new
    @mission = Mission.new

    # make a new one

  end

  def create
    Mission.create(mission_params)
    redirect_to(missions_path)
  end

  def destroy
    mission = Mission.find(params[:id])
    mission.destroy
    redirect_to(missions_path)
  end

  def edit

    @mission =Mission.find(params[:id])
    

  end

  def update
    Mission.find(params[:id]).update(mission_params)
    redirect_to(missions_path)
  end


  def wiki
     @page = Wikipedia.find('Getting Things Done') 
   end

















    private

    def mission_params
      params.require(:mission).permit(:name, :image, :outcome, :objective)
    end






end

