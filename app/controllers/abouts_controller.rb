class AboutsController < ApplicationController
  before_action :set_about, only: [:edit, :update, :show, :destroy]
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit, :sort]}, site_admin: :all, editor: :all
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
    @bios = About.new(about_params)

    respond_to do |format|
      if @bios.save
        format.html { redirect_to about_us_path, notice: "Your Biography is now Live!" }
      else
        format.html { render :new }
      end
    end
  end

  def edit
  end

  def update

    respond_to do |format|
      if @bios.update(about_params)
        format.html { redirect_to about_me_path, notice: "Your Biography was sucessfully updated."}
      else
        format.html { render :edit}
      end
    end
  end

  def show
  end

  def destroy
    @bios.destroy
    respond_to do |format|
      format.html { redirect_to about_us_path, notice: "Post was Deleted!"}
    end
  end

  private 

  def about_params
    params.require(:about).permit(
      :name, 
      :greeting, 
      :main_img, 
      :thumb_img, 
      :about_me
      )
  end

  def set_about
    @bios = About.friendly.find(params[:id])
  end

end