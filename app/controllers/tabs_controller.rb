class TabsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tabs = current_user.tabs.all
    @tab = Tab.new
  end

  def create
    @tab = current_user.tabs.new(tab_params)
    if @tab.save
      respond_to do |format|
        format.js
        format.html { redirect_to root_url }
      end
    else
      flash.now[:danger] = "Unable to save tab."
      @tabs = current_user.tabs
      render :index
    end
  end

  def show
    respond_to do |format|
      format.html { redirect_to root_url }
    end
  end

  def destroy
    @tab = current_user.tabs.where(id: params[:id]).first
    @tab.destroy unless @tab.nil?
    respond_to do |format|
      format.js
      format.html { redirect_to root_url }
    end
  end

  private

  def tab_params
    params.require(:tab).permit(:title, :url)
  end

end
