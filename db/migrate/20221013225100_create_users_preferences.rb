class CreateUsersPreferences < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:users_preferences)

    create_table :users_preferences do |t|
      t.timestamp :mail_sent_at
      t.ARRAY :user_preference_tags
      t.integer :user_id
      t.integer :mail_frequency

      t.timestamps
    end
  end
end
