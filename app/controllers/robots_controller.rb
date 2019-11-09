class RobotsController < ApplicationController

  def index
    @robots = Robot.all
  end

  def show
      @robot = Robot.find(params[:id])
  end

  def new
    @robot = Robot.new
  end

  def create
    @robot = Robot.create(robot_params)

    redirect_to robot_path(@robot)
  end

  def edit
      @robot = Robot.find(params[:id])
  end

  def update
      @robot = Robot.find(params[:id])
      @robot.update

      redirect_to robot_path(@robot)
  end

  def destroy
      @robot = Robot.find(params[:id])
      @robot.destroy

      redirect_to robots_path
  end

private
  def robot_params
    params.require(:robot).permit(:name, :slogan)
  end


end
