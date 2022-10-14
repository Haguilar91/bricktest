class CreateEmailSubscriptions < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:email_subscriptions)

    create_table :email_subscriptions do |t|
      t.string :email
      t.string :security_key
      t.string :status

      t.timestamps
    end
  end
end
