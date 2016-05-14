require 'spec_helper.rb'

feature "Visit home page", js: true do
  before {create :email, email: "john.jaspers@example.com"}
  scenario "User goes to app root" do
    visit '/'
    expect(page).to have_content 'Emails'
    expect(page).to have_content "john.jaspers@example.com" 
    expect(page).to have_no_content "joni.mitchell@alberta.com"
  end
end
