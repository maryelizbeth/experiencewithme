class InvitationsMailer < ActionMailer::Base

  default from: "experienceinvitations@experiencewit.me"

  def invitation_email(user, friend, adventure)
    mail(:to => "#{friend.email}", 
          :subject => "You're Invited to Join #{user.name} on a #{adventure.title} Adventure.")
  end 
end
