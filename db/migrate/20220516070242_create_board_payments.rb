class CreateBoardPayments < ActiveRecord::Migration[6.1]
  def change
    create_table :board_payments do |t|
      t.string :bank_name
      t.string :account_name
      t.integer :account_number
      t.date :payment_date
      t.integer :amount
      t.references :client_board, null: false, foreign_key: true

      t.timestamps
    end
  end
end
