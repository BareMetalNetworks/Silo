class HomeController < ApplicationController
  def index
  	@dividerIcon = 'fas fa-tractor'
  	@produces = Produce.order(:name).where(available: true)
  end
end
