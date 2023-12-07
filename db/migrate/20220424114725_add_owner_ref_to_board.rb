class AddOwnerRefToBoard < ActiveRecord::Migration[6.1]
  def change
    add_reference :boards, :owner, null: false, foreign_key: true
  end
end
