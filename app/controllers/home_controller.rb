class HomeController < ApplicationController
  def test
    my_log = Logger.new("#{Rails.root}/log/my_controller.log")
    my_log.info('i am in the Home controller')
    FirstJob.perform_later(test: 'test string')
    raise "Error after performing job"
  end

  def catchall
    params.each do |key,value|
      my_log.warn "Param #{key}: #{value}"
    end
  end
end
