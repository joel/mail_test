namespace :mail do
  
  desc <<-DESC
    bundle exec rake mail:send
  DESC
  task send: :environment do
    # Notifier.welcome.deliver # sends the email
    mail = Notifier.welcome # => a Mail::Message object
    puts mail.body
    mail.deliver   
  end
end