class HomeController < ApplicationController
  def test
    FirstJob.perform_later "test string"
  end
end
