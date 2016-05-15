require 'rails_helper.rb'

feature "Visit home page", js: true do
  before do
    400.times {create :email}
  end
  scenario "User goes to app root" do
    visit '/'
    expect(page).to have_content 'Emails'
    expect(page).to have_content "joni.mitchell-1@alberta.ca" 
    expect(page).to have_no_content "joni.mitchell@alberta.gov"
  end
end
