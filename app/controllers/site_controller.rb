class SiteController < ApplicationController
  before_action :authenticate_user!, except: [:home, :how, :terms, :team]
  layout "public"

  def home
  	redirect_to dashboard_home_path if current_user
  	@resource = User.new
  end

  def how
  end

  def terms
  end

  def team
  end
end
