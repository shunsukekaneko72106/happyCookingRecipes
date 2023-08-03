require 'rails_helper'

RSpec.describe "CookingRecords", type: :system do
  before do
    stub_request(:get, "https://chromedriver.storage.googleapis.com/LATEST_RELEASE_96.0.4664").
    with(
      headers: {
        'Accept'=>'*/*',
        'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3',
        'Host'=>'chromedriver.storage.googleapis.com',
        'User-Agent'=>'Ruby'
      }).
    to_return(status: 200, body: "", headers: {})  
  end

  it 'displays the cooking records' do
    visit cooking_records_path
    expect(page).to have_content 'record 1 comment'
    expect(page).to have_content 'record 2 comment'
    expect(page).to have_css("img[src*='https://cooking-records.ex.oishi-kenko.com/images/1.jpg']")
    expect(page).to have_css("img[src*='https://cooking-records.ex.oishi-kenko.com/images/2.jpg']")
  end
end

