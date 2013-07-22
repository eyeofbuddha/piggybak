require'spec_helper'

feature 'Product' do
  scenario "visit /" do
    visit products_path
  end
end
