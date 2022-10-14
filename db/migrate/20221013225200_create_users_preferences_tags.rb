class CreateUsersPreferencesTags < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:users_preferences_tags)

    create_table :users_preferences_tags do |t|
      t.boolean :is_tag_available
      t.integer :tag_id

      t.timestamps
    end
  end
end
