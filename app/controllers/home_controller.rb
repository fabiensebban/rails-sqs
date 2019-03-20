class HomeController < ApplicationController
  def index
    FirstJob.perform_later
  end
end
