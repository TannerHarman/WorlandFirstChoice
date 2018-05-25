class AboutsController < ApplicationController
  def index
    @bios = About.all
  end
end