class HomeController < ApplicationController
  def index
  	@dividerIcon = 'fas fa-tractor'
  	@produces = Produce.all
  end
end
