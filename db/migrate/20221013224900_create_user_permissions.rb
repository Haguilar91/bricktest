class CreateUserPermissions < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:user_permissions)

    create_table :user_permissions do |t|
      t.integer :user_id
      t.integer :permission_id

      t.timestamps
    end
  end
end
