class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:landing, :home]

  def landing
    @disable_nav = true
  end

  def home
  end
end
