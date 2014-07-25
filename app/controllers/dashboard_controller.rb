class DashboardController < ApplicationController
  def show
    @selections = current_user.selections.all
  end
end
