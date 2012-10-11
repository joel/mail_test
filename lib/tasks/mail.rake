namespace :mail do
  
  desc <<-DESC
    bundle exec rake mail:send
  DESC
  task send: :environment do
    Notifier.welcome.deliver
  end
end