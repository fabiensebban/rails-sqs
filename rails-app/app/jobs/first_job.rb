class FirstJob < ApplicationJob
  queue_as :rails_sqs

  def perform(test)
    logger.info test
    raise "This is the first job : #{test.to_s}"
  end
end
