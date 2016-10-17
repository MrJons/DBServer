require 'spec_helper'

context 'server is running' do

  scenario "when passing no route or query page should print 'Hello DBS!'" do
    visit '/'
    expect(page).to have_content('Hello DBS!')
  end
end

context 'key-value params can be passed in' do

  scenario 'page renders passed in params for check' do
    visit '/set?key=value'
    expect(page).to have_content('key = value')
  end
end
