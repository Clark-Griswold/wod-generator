class LogsController < ApplicationController
  before_action :find_log, only: [:show, :edit, :update, :destroy]  

  def index
    @logs = Log.all
  end

  def show
    @log =Log.find(params[:id])
  end

  def new
    @log = Log.new
  end

  def create
    @log = Log.create(log_params)
    if @log.valid?
      redirect_to logs_path
    else
      render :new, status: :unprocessabel_entity
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