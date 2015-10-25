class UserMailer < ApplicationMailer
  # This is a hash of default values for any email you send
  # from this mailer. In this case we are setting the :from
  # header to a value for all messages in this class. This
  # can be overridden on a per-email basis.
  default from: 'notifications@example.com'

  def welcome_email(user)
    @user = user
    @url = 'http://example.com/login'

    # The actual email message, we are passing the :to and
    # :subject headers in.
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')

  end
end
