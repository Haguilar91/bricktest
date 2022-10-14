class CreateOauthAccessTokens < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:oauth_access_tokens)

    create_table :oauth_access_tokens do |t|
      t.references :application, null: false, foreign_key: { to_table: :oauth_applications }
      t.bigint :resource_owner_id
      t.string :token, null: false
      t.string :refresh_token
      t.integer :expires_in
      t.timestamp :revoked_at
      t.string :scopes
      t.string :previous_refresh_token, null: false
    end
  end
end
