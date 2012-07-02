class InvitationsMailer < ActionMailer::Base

  default from: "experienceinvitations@experiencewit.me"

  def invitation_email(current_user, friend, adventure)
    mail(:to => "#{current_user.invitations.last.friend_email}", 
          :subject => "You're Invited to Join #{current_user.name} on a #{current_user.user_adventures.name} Adventure.")
  end 
end
