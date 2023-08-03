require 'net/http'
require 'uri'

class CookingRecordsController < ApplicationController
  def index
    uri = URI.parse("https://cooking-records.ex.oishi-kenko.com/cooking_records")
    response = Net::HTTP.get_response(uri)
    @cooking_records = JSON.parse(response.body)['cooking_records']
    puts @cooking_records
  end
end
