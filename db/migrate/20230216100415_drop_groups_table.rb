class DropGroupsTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :groups, force: :cascade
  end
end
