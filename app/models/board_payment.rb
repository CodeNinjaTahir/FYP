class BoardPayment < ApplicationRecord
  belongs_to :client_board
  has_one_attached :payment_slip
end
