class HomeController < ApplicationController
  def index
  end

  def call_job
    SampleJob.perform_later
  end

  def get_post
    # String Parameters
    permit_parameters = params.permit(:key1, :key2, :key3, :name_input_text, keywords: [:keyword]).to_h

    pp permit_parameters[:key1]
    pp permit_parameters[:key2]
    pp permit_parameters[:key3]
    pp permit_parameters[:name_input_text]
    permit_parameters[:keywords].each do |keyword|
      pp keyword[:keyword]
    end

    # binding.pry
  end
end
