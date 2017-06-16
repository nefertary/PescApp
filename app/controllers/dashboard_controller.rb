class DashboardController < ApplicationController
  def home
  	add_breadcrumb "Dashboard", dashboard_home_path
  end
end
