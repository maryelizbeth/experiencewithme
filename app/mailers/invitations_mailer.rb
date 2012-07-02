class InvitationsMailer < ActionMailer::Base

  default from: "experienceinvitations@experiencewit.me"

  def invitation_email(current_user, friend, adventure)
    mail(:to => "#{current_user.invitations.friend_email}", 
          :subject => "You're Invited to Join #{user.name} on a #{current_user.user_adventures.adventure.name} Adventure.")
  end 
end
