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
      if @wellness_program.update(params.require(:program).permit(:title, :subtitle, :description, :price))
        format.html { redirect_to action: "index", notice: "The Wellness Program has been updated."}
      else
        format.html { render :edit}
      end
    end
  end
end
