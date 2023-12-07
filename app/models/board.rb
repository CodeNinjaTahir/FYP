class Board < ApplicationRecord
  has_one_attached :image
  belongs_to :owner
  has_many :client_boards
  has_many :clients, through: :client_boards
end
