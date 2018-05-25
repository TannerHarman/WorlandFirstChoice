class ProgramsController < ApplicationController
  def index
    @wellness_program = Program.all
  end
end
