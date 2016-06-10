class AddUserPicToUsers < ActiveRecord::Migration
  def self.up
    add_attachment :users, :user_pic
  end
  def self.down
    remove_attachment :users, :user_pic
  end
end
