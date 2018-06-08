class ProgramsController < ApplicationController
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all, editor: :all
  def index
    @wellness_program = Program.all
  end

  def edit
      @wellness_program = Program.find(params[:id])
  end

  def update
    @wellness_program = Program.find(params[:id])
    
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
end