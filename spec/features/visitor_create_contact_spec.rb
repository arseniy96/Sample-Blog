require "spec_helper"

feature "Contact Creation" do
  scenario "allows accees to contacts page" do
    visit '/contacts'

    expect(page).to have_content I18n.t('contacts.new_contacts')
  end

  scenario "allows a guest to create contact" do
    visit '/contacts'

    fill_in :contact_email, :with => 'user@example.com'
    fill_in :contact_message, :with => 'something'

    click_button 'Send Message'

    expect(page).to have_content 'Hello!'
  end
end