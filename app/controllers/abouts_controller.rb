class AboutsController < ApplicationController
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all, editor: :all
  def index
    @bios = About.by_position
  end

  def sort
    params[:order].each do |key, value|
      About.find(value[:id]).update(position: value[:position])
    end

    render body: nil
  end

  def new
    @bios = About.new
  end

  def create
    @bios = About.new(params.require(:about).permit(:name, :greeting, :about_me))

    respond_to do |format|
      if @bios.save
        format.html { redirect_to about_us_path, notice: "Your Biography is now Live!" }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @bios = About.friendly.find(params[:id])
  end

  def update
    @bios = About.friendly.find(params[:id])

    respond_to do |format|
      if @bios.update(params.require(:about).permit(:name, :greeting, :about_me))
        format.html { redirect_to about_me_path, notice: "Your Biography was sucessfully updated."}
      else
        format.html { render :edit}
      end
    end
  end

  def show
    @bios = About.friendly.find(params[:id])
  end

  def destroy
    @bios = About.friendly.find(params[:id])

    @bios.destroy
    respond_to do |format|
      format.html { redirect_to about_us_path, notice: "Post was Deleted!"}
    end
  end
end