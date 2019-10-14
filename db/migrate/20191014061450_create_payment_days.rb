class CreatePaymentDays < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_days do |t|
      t.string  :date
      t.timestamps
    end
  end
end
