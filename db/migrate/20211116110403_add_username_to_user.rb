class AddUsernameToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string, :default => "Unknown", null: false
    #Ex:- :default =>''
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
