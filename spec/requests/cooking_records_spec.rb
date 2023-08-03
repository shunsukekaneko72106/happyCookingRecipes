require 'rails_helper'

RSpec.describe "CookingRecords", type: :request do
  #APIからのデータが取得が正しいかどうか
  describe '#index' do
    let(:expected_cooking_records) do
      [
        {
          "image_url"=>"https://cooking-records.ex.oishi-kenko.com/images/19.jpg",
          "comment"=>"指先までつけた塩でよい塩梅に。",
          "recipe_type"=>"main_dish",
          "recorded_at"=>"2018-04-12 18:32:19"
        },
      ]
    end

    let(:api_url) { "https://cooking-records.ex.oishi-kenko.com/cooking_records?offset=18&limit=6" }
  
    before do
      stub_request(:get, api_url).
        to_return(body: { cooking_records: expected_cooking_records }.to_json)
    end

    #取得したAPIが正しく表示されているかどうか
    it "fetches the cooking records from the API and display them" do
      get '/cooking_records', params: { offset: 18 }
    
      expected_cooking_records.each do |record|
        #特殊文字をエスケープ
        expect(response.body).to include(CGI.escapeHTML(record["image_url"]))
        expect(response.body).to include(CGI.escapeHTML(record["comment"]))
        expect(response.body).to include(
          case record['recipe_type']
          when 'main_dish' then '主菜/主食'
          when 'side_dish' then '副菜'
          when 'soup' then 'スープ'
          else CGI.escapeHTML(record['recipe_type'])
          end
        )
        expect(response.body).to include(DateTime.parse(record['recorded_at']).strftime('%Y-%m-%d'))
      end
    end
  end
end
