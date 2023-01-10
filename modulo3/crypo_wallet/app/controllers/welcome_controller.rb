class WelcomeController < ApplicationController
  def index
    @nome = 'Gabriel Sappio'
    @curso = "Rails"
  end
end
