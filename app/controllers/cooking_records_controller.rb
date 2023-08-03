require 'net/http'
require 'uri'
require 'json'

class CookingRecordsController < ApplicationController
  RECORDS_PER_PAGE = 6  # 各ページに表示するレコードの数

  def index
    offset = params.fetch(:offset, 0).to_i
    uri = URI.parse("https://cooking-records.ex.oishi-kenko.com/cooking_records")

    uri.query = URI.encode_www_form({ offset: offset, limit: RECORDS_PER_PAGE })

    response = Net::HTTP.get_response(uri)

    @cooking_records = JSON.parse(response.body)['cooking_records']

    @next_offset = offset + RECORDS_PER_PAGE if @cooking_records.length == RECORDS_PER_PAGE
    @prev_offset = [offset - RECORDS_PER_PAGE, 0].max if offset > 0
  end
end
