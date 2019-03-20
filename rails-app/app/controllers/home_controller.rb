class HomeController < ApplicationController
  def index
    FirstJob.perform_later 'test-first'
  end

  def test
    SecondJob.perform_later 'test-second'
  end
end
