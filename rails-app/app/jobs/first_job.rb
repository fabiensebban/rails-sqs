class FirstJob < ApplicationJob
  queue_as :rails_sqs

  def perform(*args)
    raise "This is the first job "
  end
end
