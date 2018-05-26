class AboutsController < ApplicationController
  def index
    @bios = About.all
  end

  def new
    @bios = About.new
  end

  def create
    @bios = About.new(params.require(:about).permit(:name, :greeting, :about_me))

    respond_to do |format|
      if @bios.save
        format.html { redirect_to about_path, notice: "Your Biography is now Live!"}
      else
        format.html { render :new}
      end
    end
  end

  def edit
    @bios = About.find(params[:id])
  end

  def update
    @bios = About.find(params[:id])

    respond_to do |format|
      if @bios.update(params.require(:about).permit(:name, :greeting, :about_me))
        format.html { redirect_to about_path, notice: "Your Biography was sucessfully updated."}
      else
        format.html { render :edit}
      end
    end
  end

  def show
    @bios = About.find(params[:id])
  end
end