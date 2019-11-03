class CreateActCats < ActiveRecord::Migration[5.2]
  def change
    create_table :act_cats do |t|
      t.string  :category
      t.timestamps
    end
  end
end
