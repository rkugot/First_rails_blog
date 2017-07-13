require 'spec_helper'

feature "Account Creation" do

  scenario "allows guest to create account" do
    sign_up
    expect(page).to have_content 'Hello, mike'
  end

end

