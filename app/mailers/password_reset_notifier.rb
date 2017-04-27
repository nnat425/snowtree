class PasswordResetNotifier < ActionMailer::Base
  default from: "snowtree.testing@gmail.com"
  layout 'mailer'
  def password_reset_instructions(admin)
    @url  = edit_password_reset_url(token: admin.perishable_token)
    mail(to: "snowtree.testing@gmail.com", subject: "Password Reset Instructions")
  end
end
