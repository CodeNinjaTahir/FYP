class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :email
      t.string :password
      t.string :company_name
      t.string :address
      t.bigint :contact_no

      t.timestamps
    end
  end
end
