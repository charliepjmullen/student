class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(candidate)
   @candidate = candidate
   mail(:to => candidate.can_email, :subject => "Welcome to EmployeMe.com, You have registered successfully!")
  end
end
