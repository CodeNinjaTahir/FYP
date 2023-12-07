class RemovePasswordFromClient < ActiveRecord::Migration[6.1]
  def change
    remove_column :clients, :password
  end
end
