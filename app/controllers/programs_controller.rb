class ProgramsController < ApplicationController
  before_action :set_program, only: [:edit, :update]
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all, editor: :all

  def index
    @wellness_program = Program.all
  end

  def edit
  end

  def update
    
    respond_to do |format|
      if @wellness_program.update(program_params)
        format.html { redirect_to action: "index", notice: "The Wellness Program has been updated."}
      else
        format.html { render :edit}
      end
    end
  end

  private 
  def program_params
    params.require(:program).permit(
      :title, 
      :subtitle, 
      :description, 
      :price
      )
  end

  def set_program
    @wellness_program = Program.find(params[:id])
  end
end