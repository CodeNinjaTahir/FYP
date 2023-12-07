class Owner < ApplicationRecord

  has_secure_password

  attr_accessor :password_confirmation

  has_many :boards
  has_one :owner_bank_detail

end
