class HomeController < ApplicationController
  def test
    FirstJob.perform_later "test string"
    raise "Error after performing job"
  end
end
