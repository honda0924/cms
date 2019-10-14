class CreateActions < ActiveRecord::Migration[5.2]
  def change
    create_table :actions do |t|
      t.references  :act_cat,foreign_key: true
      t.text  :detail
      t.string  :file
      t.datetime  :start_date
      t.datetime  :end_date
      t.boolean  :in_progress
      t.references  :client,foreign_key: true
      t.timestamps
    end
  end
end
