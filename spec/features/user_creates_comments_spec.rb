require 'rails_helper'

feature "Comments Creation" do
  before(:each) do
    sign_up
  end

  scenario "allow user creates comments" do
    new_article

    fill_in :comment_body, :with => 'New comment! blabla%$'
    click_button 'Create Comment'

    expect(page).to have_content 'New comment! blabla%$'
  end
end
