class NotificationJob < ActiveJob::Base
  queue_as :default

  def perform(aulo)
    # Twilio credentials
    account_sid = 'AC574dbfebb6ba2fb9b2b620b8b178e46c'
    auth_token = '2b479479766d3f7719cf1081fe455914'
        
    # set up a client to talk to the Twilio REST API
    twilio = Twilio::REST::Client.new account_sid, auth_token
    
    aulo.attendees.each do |attendee|
      twilio.account.messages.create({
        :from => '+33644643061',
        :to => '+33616099996', 
        :body => "Bonjour #{attendee.login} ! L'Aulo '#{aulo.label}', animé par #{aulo.organizer.login}, auquel vous vous êtes inscrit(e), débute dans 10 minutes :-) Datetime exact de début de cet aulo :#{aulo.start_at.to_s}"
      })
    end
  end
end
