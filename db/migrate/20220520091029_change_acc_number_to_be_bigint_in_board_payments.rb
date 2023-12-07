class ChangeAccNumberToBeBigintInBoardPayments < ActiveRecord::Migration[6.1]
  def change
    change_column :board_payments, :account_number, :bigint
  end
end
