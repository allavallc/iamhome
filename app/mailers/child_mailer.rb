class ChildMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.property_mailer.share_property.subject
  #

  #this sends me a mail letting me know someone did something
  def child_is_home(child)
    puts "in the ChildMailer - child_is_home action"

    @message = child + " is home"

    #sender info
    @sender_email = "allavallc@gmail.com"

    #reecipient info
    @recipient_email = "7133043238@txt.att.net"

    #send mail
    mail to: @recipient_email , from: @sender_email, subject: @message

  end

end
