class CreateClosingDays < ActiveRecord::Migration[5.2]
  def change
    create_table :closing_days do |t|
      t.string  :date
      t.timestamps
    end
  end
end
