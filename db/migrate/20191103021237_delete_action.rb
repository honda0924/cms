class DeleteAction < ActiveRecord::Migration[5.2]
  def change
    drop_table :actions
  end
end
