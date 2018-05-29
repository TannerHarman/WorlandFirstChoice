class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def section_one
    @services = Service.section(1)
  end

  def section_two
    @services = Service.section(2)
  end

  def section_three
    @services = Service.section(3)
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(params.require(:service).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @service.save
        format.html { redirect_to services_path, notice: "New Service has been Created" }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @service = Service.friendly.find(params[:id])
  end

  def update
    @service = Service.friendly.find(params[:id])

    respond_to do |format|
      if @service.update(params.require(:service).permit(:title, :subtitle, :body))
        format.html { redirect_to services_path, notice: "New Service has been Created"}
      else
        format.html { render :edit}
      end
    end
  end

  def show
    @service = Service.friendly.find(params[:id])
  end

  def destroy
    @service = Service.friendly.find(params[:id])

    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_path, notice: "Service has been removed"}
    end
  end
end