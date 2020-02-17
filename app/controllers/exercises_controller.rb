class ExercisesController < ApplicationController

  def create
    @log = Log.find(params[:log_id])
    @exercise = @log.exercises.create(params[:exercise].permit(:title, :sets, :reps))

    redirect_to log_path(@log)
  end
end
