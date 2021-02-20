class AddUser < ActiveRecord::Migration[6.1]
  def change
    user = User.create({username: "Bunghis", 
    password: "12345678", email: "Bunghis@gmail.com"})
  end
end
