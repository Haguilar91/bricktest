class CreateUserNotificationsHistories < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:user_notifications_histories)

    create_table :user_notifications_histories do |t|
      t.ARRAY :documents_ids
      t.integer :user_id
      t.timestamp :mail_sent_at

      t.timestamps
    end
  end
end
