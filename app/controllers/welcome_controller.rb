class WelcomeController < ApplicationController
  def index
    @languages = Language.all
  end
end
