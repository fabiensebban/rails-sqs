class FirstJob < ApplicationJob
  queue_as :rails_sqs

  def perform(*test)
    logger.info 'i am in the first job'
    raise "This is the first job : #{test}"
  end
end
