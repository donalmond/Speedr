class PagesController < ApplicationController
  before_action :authorise, only: [:welcome]

  def welcome
  end

  def faq
  end

  private
    def authorise
      redirect_to login_path unless (@current_user.present?)
    end
end
