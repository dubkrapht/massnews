class CreateUserNewsletters < ActiveRecord::Migration[5.1]
  def change
    create_table :user_newsletters do |t|

      t.timestamps
    end
  end
end
