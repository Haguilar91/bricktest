class CreateOauthApplications < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:oauth_applications)

    create_table :oauth_applications do |t|
      t.string :secret, null: false
      t.string :uid, null: false
      t.string :name, null: false
      t.text :redirect_uri, null: false
      t.boolean :confidential, null: false
      t.string :scopes, null: false

      t.timestamps
    end
  end
end
