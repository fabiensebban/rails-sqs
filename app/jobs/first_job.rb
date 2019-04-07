class FirstJob < ApplicationJob
  queue_as :rails_sqs

  def perform
    my_log = Logger.new("#{Rails.root}/log/my_job.log")
    my_log.info('i am in the First Job')
    SecondJob.perform_later(test: 'test string in the second job')
    raise "This is the first job : #{test}"
  end
end
