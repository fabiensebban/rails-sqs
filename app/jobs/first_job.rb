class FirstJob < ApplicationJob
  queue_as :rails_sqs

  def perform(*test)
    my_log = Logger.new("#{Rails.root}/log/my_job.log")
    my_log.info('i am in the First Job')
    raise "This is the first job : #{test}"
  end
end
