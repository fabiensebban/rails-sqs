class HomeController < ApplicationController
  def index
    FirstJob.perform_later
  end

  def test
    SecondJob.perform_later
  end
end
