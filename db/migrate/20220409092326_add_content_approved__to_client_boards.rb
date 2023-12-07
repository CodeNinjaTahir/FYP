class AddContentApprovedToClientBoards < ActiveRecord::Migration[6.1]
  def change
    add_column :client_boards, :content_approved, :boolean
  end
end
