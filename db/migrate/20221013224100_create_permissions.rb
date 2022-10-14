class CreatePermissions < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:permissions)

    create_table :permissions do |t|
      t.string :name

      t.timestamps
    end
  end
end
