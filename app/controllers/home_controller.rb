class HomeController < ApplicationController
  def test
    FirstJob.perform_later
  end
end
