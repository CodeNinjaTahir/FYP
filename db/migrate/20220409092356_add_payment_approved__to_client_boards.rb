class AddPaymentApprovedToClientBoards < ActiveRecord::Migration[6.1]
  def change
    add_column :client_boards, :payment_approved, :boolean
  end
end
