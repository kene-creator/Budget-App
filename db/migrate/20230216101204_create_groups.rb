class CreateGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.jsonb :icon_data
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
