class SecondJob < ApplicationJob
  queue_as :rails-sqs

  def perform(*args)
    raise "This is the second job "
  end
end
