class HomeController < ApplicationController
  def test
    raise "I am in the home controller"
    FirstJob.perform_later "test string"
  end
end
