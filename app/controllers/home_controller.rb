class HomeController < ApplicationController
  def test
    logger.info 'i am in the Home controller'
    FirstJob.perform_later(test: 'test string')
    raise "Error after performing job"
  end
end
