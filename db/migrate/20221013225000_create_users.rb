class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:users)

    create_table :users do |t|
      t.timestamp :confirmation_sent_at
      t.timestamp :confirmed_at
      t.string :confirmation_token
      t.boolean :is_contributor
      t.string :occupation
      t.string :last_name
      t.string :first_name
      t.timestamp :remember_created_at
      t.timestamp :reset_password_sent_at
      t.string :reset_password_token
      t.string :unique_session_id
      t.boolean :receive_information_emails
      t.string :authentication_token
      t.string :email, null: false
      t.string :encrypted_password, null: false
      t.integer :sign_in_count, null: false
      t.timestamp :current_sign_in_at
      t.timestamp :last_sign_in_at
      t.inet :current_sign_in_ip
      t.inet :last_sign_in_ip
      t.string :stripe_customer_id

      t.timestamps
    end
  end
end
