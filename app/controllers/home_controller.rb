class HomeController < ApplicationController
  def test
    logger.info "I am in the home controller"
    FirstJob.perform_later "test string"
  end
end
