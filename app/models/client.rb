class Client < ApplicationRecord
    has_many :client_boards
    has_many :boards, through: :client_boards
    has_secure_password
    attr_accessor :password_confirmation
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :company_name, presence: true, uniqueness: {case_sensitive: false},length: {minimum:3, maximum:20}
    validates :email, presence: true, uniqueness: true,format: {with: VALID_EMAIL_REGEX},length: {minimum:3, maximum:20}
end
