class MissionsController < ApplicationController
  
  def index
    @missions = Mission.all
  end

  def show
    @mission = Mission.find(params[:id])
    end

  def new
    @mission = Mission.new

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


    private

    def mission_params
      params.require(:mission).permit(:name, :image, :mass, :moons)
    end






end

