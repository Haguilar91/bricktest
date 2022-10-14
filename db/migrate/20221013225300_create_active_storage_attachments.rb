class CreateActiveStorageAttachments < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:active_storage_attachments)

    create_table :active_storage_attachments do |t|
      t.references :blob, null: false, foreign_key: { to_table: :active_storage_blobs }
      t.bigint :record_id, null: false
      t.string :record_type, null: false
      t.string :name, null: false
    end
  end
end
