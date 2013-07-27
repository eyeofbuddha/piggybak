require 'spec_helper'

describe 'Dashboard' do
  it 'visits the dashboard' do
    visit admin_dashboard_path
  end
end
