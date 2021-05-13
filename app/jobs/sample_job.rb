class SampleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    logger.debug "Sample Job Start."

    job_status = JobStatus.last

    if job_status.blank?
      logger.debug "no status error."
      return
    end

    # repeat 5 times
    for i in 0..4
      job_status.status += 1
      job_status.save!
      sleep(3)
    end

    logger.debug "Sample Job End."
  end
end
