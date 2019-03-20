class SecondJob < ApplicationJob
  queue_as :rails_sqs

  def perform(test)
    raise "This is the second job : #{test}"
  end
end
