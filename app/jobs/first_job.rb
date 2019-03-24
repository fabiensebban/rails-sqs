class FirstJob < ApplicationJob
  queue_as :rails_sqs

  def perform(*test)
    raise "This is the first job : #{test}"
  end
end
