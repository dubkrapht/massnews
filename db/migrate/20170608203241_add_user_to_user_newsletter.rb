class AddUserToUserNewsletter < ActiveRecord::Migration[5.1]
  def change
    add_reference :user_newsletters, :user, foreign_key: true
  end
end
