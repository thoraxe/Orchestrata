class StatisticsController < ApplicationController
  def index
    @statistics = Statistic.all
  end
  
  def show
    @statistic = Statistic.find(params[:id])
  end
  
  def new
    @applications = Application.all
    @statistic = Statistic.new
  end
  
  def create
#    @applications = Application.all
    @statistic = Statistic.new(params[:statistic])
    if @statistic.save
      flash[:notice] = "Successfully created statistic."
      redirect_to @statistic
    else
      render :action => 'new'
    end
  end
  
  def edit
    @statistic = Statistic.find(params[:id])
  end
  
  def update
    @statistic = Statistic.find(params[:id])
    if @statistic.update_attributes(params[:statistic])
      flash[:notice] = "Successfully updated statistic."
      redirect_to @statistic
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @statistic = Statistic.find(params[:id])
    @statistic.destroy
    flash[:notice] = "Successfully destroyed statistic."
    redirect_to statistics_url
  end
end
