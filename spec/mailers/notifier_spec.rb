require "spec_helper"

describe Notifier do
  # include Rails.application.routes.url_helpers

  before(:all) do
    @email = Notifier.welcome
  end

  it "should be set to be delivered to the email passed in" do
    @email.should deliver_to ENV['TO']
  end
  
  it "should be set to be delivered from the email passed in" do
    @email.should deliver_from ENV['FROM']
  end  

  it "should contain the user's message in the mail body" do
    @email.should have_body_text(/Hello/)
  end

  # it "should contain a link to the confirmation link" do
  #   @email.should have_body_text(/#{confirm_account_url}/)
  # end

  it "should have the correct subject" do
    @email.should have_subject(/welcome/)
  end

end
