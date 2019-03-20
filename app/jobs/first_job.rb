class FirstJob < ApplicationJob
  queue_as :rails-sqs

  def perform(*args)
    raise "This is the first job "
  end
end
