class ServiceSectionsController < ApplicationController

  def index
    @section = ServiceSection.all
  end

  def new
    @section = ServiceSection.new
  end

  def create
    @section = ServiceSection.new(params.require(:service_section).permit(:title))

    respond_to do |format|
      if @section.save
        format.html { redirect_to service_sections_path, notice: "New Category has been Created" }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @section = ServiceSection.find(params[:id])
  end

  def update
    @section = ServiceSection.find(params[:id])

    respond_to do |format|
      if @section.update(params.require(:service_section).permit(:title))
        format.html { redirect_to service_sections_path, notice: "Your Category has been updated"}
      else
        format.html { render :edit}
      end
    end
  end

  def show
    @section = ServiceSection.find(params[:id])
  end

  def destroy
    @section = ServiceSection.find(params[:id])

    @section.destroy
    respond_to do |format|
      format.html { redirect_to service_sections_path, notice: "Category has been removed"}
    end
  end
end
