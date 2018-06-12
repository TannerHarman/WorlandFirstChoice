class ServicesController < ApplicationController
  before_action :set_service, only: [:edit, :update, :show, :destroy]
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all, editor: :all
  def index
    @services = Service.by_position
  end

  def sort
    params[:order].each do |key, value|
      Service.find(value[:id]).update(position: value[:position])
    end

    render body: nil
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)

    respond_to do |format|
      if @service.save
        format.html { redirect_to services_path, notice: "New Service has been Created" }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update

    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to services_path, notice: "New Service has been Created"}
      else
        format.html { render :edit}
      end
    end
  end

  def show
  end

  def destroy

    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_path, notice: "Service has been removed"}
    end
  end

  private 
  def service_params
    params.require(:service).permit(
      :title, 
      :subtitle,
      :main_img,
      :thumb_img,
      :body,
      :service_sections_id
      )
  end

  def set_service
    @service = Service.friendly.find(params[:id])
  end
end