require 'rails_helper'

feature "Edit to article" do
  before(:each) do
    sign_up
  end

  scenario "allow user creates comments" do
    new_article

    visit '/articles'

    click_link 'Edit'

    fill_in :article_title, :with => 'The modified article'
    fill_in :article_text, :with => 'The modified text to article'

    click_button 'Save Article'

    visit '/articles'
    expect(page).to have_content 'The modified text to article'
  end
end
