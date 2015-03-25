class AddUserRefToYourTips < ActiveRecord::Migration
  def change
    add_reference :your_tips, :user, index: true
    add_foreign_key :your_tips, :users
  end
end
