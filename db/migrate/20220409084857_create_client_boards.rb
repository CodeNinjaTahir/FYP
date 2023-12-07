class CreateClientBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :client_boards do |t|
      t.references :client, null: false, foreign_key: true
      t.references :board, null: false, foreign_key: true

      t.timestamps
    end
  end
end
