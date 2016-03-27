def sign_up
  visit new_user_registration_path

  fill_in :user_email, :with => 'user@example.com'
  fill_in :user_username, :with => 'Mike'
  fill_in :user_password, :with => 'abcd1234'
  fill_in :user_password_confirmation, :with => 'abcd1234'

  click_button 'Sign up'
end

def new_article
  visit new_article_path

  fill_in :article_title, :with => 'Lorem Ipsum'
  fill_in :article_text, :with => 'Lorem ipsum dolor sit amet'

  click_button 'Save Article'
end