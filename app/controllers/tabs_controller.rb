class TabsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tabs = current_user.tabs.all
  end

  def destroy
    @tab = current_user.tabs.where(id: params[:id]).first
    unless @tab.nil?
      @tab.destroy
      respond_to :js
    end
  end

end
