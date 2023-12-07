class CreateBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.string :name
      t.string :company_name
      t.string :status
      t.string :tpye
      t.decimal :price
      t.string :screen_size
      t.decimal :viewership_count
      t.string :location

      t.timestamps
    end
  end
end
