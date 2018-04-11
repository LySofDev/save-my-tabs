class TabsController < ApplicationController
  before_action :authenticate_user!

  def index
    @tabs = current_user.tabs.all
  end

end
