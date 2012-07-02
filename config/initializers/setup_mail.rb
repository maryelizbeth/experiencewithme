ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com", 
  port: 587, 
  domain: "experiencewith.me", 
  user_name: "experienceinvitations",
  password: "experiencepassword", 
  authentication: "plain", 
  enable_starttls_auto: true 
}

ActionMailer::Base.default_url_options[:host] = "localhost:3000"  
