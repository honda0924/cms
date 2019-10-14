class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string  :company_name1
      t.string  :company_name2
      t.string  :postcode
      t.string  :addr1
      t.string  :addr2
      t.string  :addr3
      t.string  :tel
      t.string  :fax
      t.string  :client_person_in_charge
      t.string  :mobile
      t.string  :url
      t.string  :email
      t.references  :client_rank,foreign_key: true
      t.references  :client_cat,foreign_key: true
      t.references  :closing_day,foreign_key: true
      t.references  :payment_day,foreign_key: true
      t.references  :payment_method,foreign_key: true
      t.references  :user,foreign_key: true
      t.timestamps
    end
  end
end
