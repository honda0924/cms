class CreateClientCats < ActiveRecord::Migration[5.2]
  def change
    create_table :client_cats do |t|
      t.string  :category
      t.timestamps
    end
  end
end
