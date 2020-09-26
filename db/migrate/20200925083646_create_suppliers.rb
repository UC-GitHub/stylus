class CreateSuppliers < ActiveRecord::Migration[6.0]
  def change
    create_table :suppliers do |t|
      t.string  :display_name,               null: false
      t.string  :company_name,               null: false
      t.string  :email,                      null: false
      t.string  :password,                   null: false
      t.string  :password_confirmation,      null: false
      t.string  :family_name_in_charge,      null: false
      t.string  :first_name_in_charge,       null: false
      t.string  :kana_family_name_in_charge, null: false
      t.string  :kana_first_name_in_charge,  null: false
      t.string  :postal_code,                null: false
      t.integer :prefecture_id,              null: false
      t.string  :city,                       null: false
      t.string  :street_address,             null: false
      t.string  :building,                   null: true
      t.string  :phone_number,               null: false
      t.string  :mobile_number,              null: true

      t.timestamps
    end
  end
end
