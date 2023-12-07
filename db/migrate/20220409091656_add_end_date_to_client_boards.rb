class AddEndDateToClientBoards < ActiveRecord::Migration[6.1]
  def change
    add_column :client_boards, :end_date, :date
  end
end
