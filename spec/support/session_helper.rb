def sign_up
  visit new_user_registration_path

  fill_in :user_email, :with => 'user@example.com'
  fill_in :user_username, :with => 'Mike'
  fill_in :user_password, :with => 'abcd1234'
  fill_in :user_password_confirmation, :with => 'abcd1234'

  click_button 'Sign up'
end