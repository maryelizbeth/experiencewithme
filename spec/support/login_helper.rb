def sign_up(user)
  visit new_user_registration_path
  fill_in "Email", :with => user.email
  fill_in "Password", :with => Fabricate.attributes_for(:user)[:password]
  fill_in "Password confirmation", :with => Fabricate.attributes_for(:user)[:password]
  click_link_or_button("Sign up")
end 
