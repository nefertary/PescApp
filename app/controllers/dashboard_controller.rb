class DashboardController < ApplicationController
  
  def home
  	add_breadcrumb "Dashboard", dashboard_home_path
  end

  def catalog
  	add_breadcrumb "Dashboard", dashboard_home_path
  	add_breadcrumb "Catálogo"
  end
  
  def configuration
  	add_breadcrumb "Dashboard", dashboard_home_path
  	add_breadcrumb "Configuración"
  end
  
  def info
  	add_breadcrumb "Dashboard", dashboard_home_path
  	add_breadcrumb "Información"
  end
  
  def notices
  	add_breadcrumb "Dashboard", dashboard_home_path
  	add_breadcrumb "Social"
    @notices = Notice.all
    @comment = Comment.new
  end
  
  def weather
  	add_breadcrumb "Dashboard", dashboard_home_path
  	add_breadcrumb "Clima"
  end

  def news
    add_breadcrumb "Dashboard", dashboard_home_path
    add_breadcrumb "Noticias"
  end

end
