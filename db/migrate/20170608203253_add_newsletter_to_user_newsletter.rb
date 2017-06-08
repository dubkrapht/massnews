class AddNewsletterToUserNewsletter < ActiveRecord::Migration[5.1]
  def change
    add_reference :user_newsletters, :newsletter, foreign_key: true
  end
end
