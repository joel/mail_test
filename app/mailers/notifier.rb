class Notifier < ActionMailer::Base
  default from:        ENV['FROM'],
          return_path: ENV['RETURN_PATH']

    def welcome
      mail(
           subject: "welcome #{Time.now.to_s(:number)}",
           to:      ENV['TO'],
           from:    ENV['FROM'],
           postmark_attachments: [ File.open(Rails.root.join('app/assets/images/rails.png').to_s) ]
         )
    end
end
