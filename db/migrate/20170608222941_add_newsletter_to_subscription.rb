class AddNewsletterToSubscription < ActiveRecord::Migration[5.1]
  def change
    add_reference :subscriptions, :newsletter, foreign_key: true
  end
end
