class UserValidator < ActiveModel::Validator 
  def validate(record)
    if record[:username].length < 5 
      record.errors.add :base, "Name is too short."
    end

    if record[:password].length < 8 
      record.errors.add :base, "Password needs 8 chars."
    end
  end
end

class User < ApplicationRecord
  # validates_with UserValidator
  validates :username, presence: true, length: { minimum: 5 }
  validates :password, presence: true, length: { minimum: 8 }
  validates :email, presence: true
end
