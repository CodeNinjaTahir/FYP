class ChangecontentApprovedFromBooleanToInteger < ActiveRecord::Migration[6.1]
  def change
    change_column :client_boards, :content_approved, :boolean, default: nil
    change_column :client_boards, :content_approved, :integer, using: 'content_approved::integer', default: 0, null: false
  end
end
