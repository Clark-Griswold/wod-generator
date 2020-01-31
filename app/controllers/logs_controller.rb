class LogsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_log, only: [:show, :edit, :update, :destroy]  

  def index
    @logs = current_user.logs
  end

  def show
    
  end

  def new
    @log = Log.new
  end

  def create
    @log = current_user.logs.create(log_params)
    if @log.valid?
      redirect_to @log
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  private

  def log_params
    params.require(:log).permit(:date, :workout, :mood, :length)
  end

  def find_log
    @log = Log.find(params[:id])
  end



end
