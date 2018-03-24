class FeedbackMailer < ApplicationMailer
	default from: "from@gg.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.feedback_mailer.feedback.subject
  #
  def feedback(bike)
    @bike = bike

    mail to: "antoine.escarrat@gmail.com", subject: "trouducul"
  end
end
