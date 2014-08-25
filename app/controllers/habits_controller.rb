class HabitsController < ApplicationController

	def index
		@habits = Habit.all
	end

#Makes a New Habit
	def new
		@habit = Habit.new
	end

#creating Habit
	def create
		@habit = Habit.new(habit_params)

		if @habit.save
			redirect_to habits_path
		else
			render 'new'
		end
	
	end

#destroying Habit
	
	def delete
		@habit = Habit.find(params[:id])
		@habit.destroy

		redirect_to habits_path
	end

#update action after edit is made
	def update
		@habit = Habit.find(params[:id])

		if @habit.update(habit_params)
			redirect_to habits_path
		else
			render 'edit'
		end
	end

#define strong habit params
	private 
		def habit_params
			params.require(:habit).permit(:title, :text, :time, :completed)
		end

end
