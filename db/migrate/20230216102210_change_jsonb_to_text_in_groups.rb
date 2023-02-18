class ChangeJsonbToTextInGroups < ActiveRecord::Migration[7.0]
  def change
    change_column :groups, :icon_data, :text
  end
end
