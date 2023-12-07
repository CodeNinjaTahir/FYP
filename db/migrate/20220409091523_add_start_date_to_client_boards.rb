class AddStartDateToClientBoards < ActiveRecord::Migration[6.1]
  def change
    add_column :client_boards, :start_date, :date
  end
end
