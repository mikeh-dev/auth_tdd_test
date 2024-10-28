# Preview all emails at http://localhost:3000/rails/mailers/user_mailer_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer_mailer/account_activation
  def account_activation
    UserMailer.account_activation
  end

end
