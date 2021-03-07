class HomeController < ApplicationController
  def index
  end

  def call_job
    SampleJob.perform_later
  end
end
