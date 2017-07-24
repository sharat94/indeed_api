class JobsController < ApplicationController

def jobs_results
    technology = params[:technology]
    location = params[:location]
    country = params[:country]
    start = params[:start]
    response = HTTParty.get("http://api.indeed.com/ads/apisearch?publisher=7277146494571922&q=#{technology}&co=#{country}&l=#{location}&start=#{start.to_i*10}&format=json&v=2")
    @job_results = response.parsed_response
end
end