class CreateOauthAccessGrants < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:oauth_access_grants)

    create_table :oauth_access_grants do |t|
      t.timestamp :revoked_at
      t.text :redirect_uri, null: false
      t.integer :expires_in, null: false
      t.string :token, null: false
      t.references :application, null: false, foreign_key: { to_table: :oauth_applications }
      t.string :scopes, null: false
      t.bigint :resource_owner_id, null: false
    end
  end
end
