class WelcomeController < ApplicationController
  def index
    cookies[:curso] = "Curso de Ruby on Rails - Gabriel Sappio[COOKIE]"
    session[:curso] = "Curso de Ruby on Rails - Gabriel Sappio[SESSION]"
    @meu_nome = params[:nome] 
    @curso = params[:curso]
  end
end
