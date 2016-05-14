require 'spec_helper.rb'

feature "Visit home page", js: true do
  scenario "User goes to app root" do
    visit '/'
    expect(page).to have_content 'Emails'
  end
end
