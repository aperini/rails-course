class MainMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.main_mailer.notify_question_author.subject
  #
  def notify_question_author(answer)
    # simulating a slow email processing
    sleep 5

    @greeting = "Hi"

    # exposing this to use in the mail views
    @answer = answer

    mail to: answer.question.email, from: answer.email
  end
end
