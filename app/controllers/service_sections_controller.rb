class ServiceSectionsController < ApplicationController
  before_action :set_service_section, only: [:edit, :update, :show, :destroy]
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all, editor: :all

  def index
    @section = ServiceSection.by_position
  end

  def sort
    params[:order].each do |key, value|
      ServiceSection.find(value[:id]).update(position: value[:position])
    end

    render body: nil
  end

  def new
    @section = ServiceSection.new
  end

  def create
    @section = ServiceSection.new(service_section_params)

    respond_to do |format|
      if @section.save
        format.html { redirect_to services_index_path, notice: "New Category has been Created" }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update

    respond_to do |format|
      if @section.update(service_section_params)
        format.html { redirect_to services_index_path, notice: "Your Category has been updated"}
      else
        format.html { render :edit}
      end
    end
  end

  def show
    @services = Service.section(ServiceSection.friendly.find(params[:id])).by_position
  end

  def destroy

    @section.destroy
    respond_to do |format|
      format.html { redirect_to services_index_path, notice: "Category has been removed"}
    end
  end

  private 
  def service_section_params
    params.require(:service_section).permit(:title, :main_img)
  end

  def set_service_section
    @section = ServiceSection.friendly.find(params[:id])
  end
end