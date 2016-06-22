class SubscribeUserToMailingListJob < ActiveJob::Base
  queue_as :default
 
  def perform(user)
    gb = Gibbon::API.new
    gb.lists.subscribe({:id => ENV["79a6fa293c"], :email => {:email => user.email}, :double_optin => false})
  end
end