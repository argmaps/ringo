class DashboardController < ApplicationController
  def show
    @selections = current_user.selections.order('CREATED_AT DESC')
  end
end
