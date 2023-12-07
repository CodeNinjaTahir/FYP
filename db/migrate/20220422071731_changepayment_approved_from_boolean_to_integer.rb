class ChangepaymentApprovedFromBooleanToInteger < ActiveRecord::Migration[6.1]
  def change
    change_column :client_boards, :payment_approved, :boolean, default: nil
    change_column :client_boards, :payment_approved, :integer, using: 'payment_approved::integer', default: 0, null: false
  end
end
