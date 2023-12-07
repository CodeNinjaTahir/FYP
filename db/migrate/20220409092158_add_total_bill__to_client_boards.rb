class AddTotalBillToClientBoards < ActiveRecord::Migration[6.1]
  def change
    add_column :client_boards, :total_bill, :bigint
  end
end
