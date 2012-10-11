class Notifier < ActionMailer::Base
  default from:        ENV['FROM'],
          return_path: ENV['RETURN_PATH']
          # ,
          # mime_version: '1.0',
          # charset: 'UTF-8',
          # content_type: 'text/plain',
          # parts_order: [ 'text/plain', 'text/enriched', 'text/html' ]

    def welcome
      mail(
           subject: "welcome #{Time.now.to_s(:number)}",
           to:      ENV['TO'],
           from:    ENV['FROM'],
           postmark_attachments: [ File.open(Rails.root.join('app/assets/images/rails.png').to_s) ]
         )
    end
end
