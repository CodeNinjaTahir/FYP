class CreateOwners < ActiveRecord::Migration[6.1]
  def change
    create_table :owners do |t|
      t.string :email
      t.string :company_name
      t.string :address
      t.integer :contact_no
      t.string :password_digest

      t.timestamps
    end
  end
end
