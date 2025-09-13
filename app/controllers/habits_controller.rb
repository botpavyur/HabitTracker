class HabitsController < ApplicationController
  before_action :set_habit, only: [:show, :edit, :update, :destroy]

  def index
    @habits = Habit.all.order(:title)
  end

  def show
  end

  def new
    @habit = Habit.new
  end

def create
  @habit = Habit.new(habit_params)
  if @habit.save
    redirect_to habits_path, notice: "Привычка создана!"
  else
    render :new
  end
  
end
  def edit
  end

  def update
    if @habit.update(habit_params)
      redirect_to @habit, notice: "Привычка обновлена!"
    else
      render :edit
    end
  end

  def destroy
    @habit.destroy
    redirect_to habits_path, notice: "Привычка удалена!"
  end

  private

  def set_habit
    @habit = Habit.find(params[:id])
  end

  def habit_params
    params.require(:habit).permit(:title, :description, :frequency)
  end
end
