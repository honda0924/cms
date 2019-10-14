class CreateActionCats < ActiveRecord::Migration[5.2]
  def change
    create_table :action_cats do |t|
      t.string  :category
      t.timestamps
    end
  end
end
