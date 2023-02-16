class RenameIconToIconDataInGroups < ActiveRecord::Migration[7.0]
  def change
    rename_column :groups, :icon, :icon_data
  end
end
