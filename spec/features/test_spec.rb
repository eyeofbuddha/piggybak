require'spec_helper'

feature 'Admin' do
  scenario "go to dashboard" do
    visit admin_path
  end
end
