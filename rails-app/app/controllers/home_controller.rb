class HomeController < ApplicationController
  def index
    @test = {
      key1: 'value1',
      key2: 'value2'
    }

    FirstJob.perform_later @test
  end

  def test
    SecondJob.perform_later 'test-second'
  end
end
