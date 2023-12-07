class ClientBoard < ApplicationRecord
  has_one_attached :video
  belongs_to :client
  belongs_to :board
  has_one :board_payment
end
