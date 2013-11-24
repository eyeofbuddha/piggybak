require 'spec_helper'

describe 'Homepage' do
  it 'visits the homepage' do
    visit '/'
    current_path.should == root_path
    page.should have_content 'Products List'
  end
end
