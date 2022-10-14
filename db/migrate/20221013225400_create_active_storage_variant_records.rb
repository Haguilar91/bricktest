class CreateActiveStorageVariantRecords < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:active_storage_variant_records)

    create_table :active_storage_variant_records do |t|
      t.references :blob, null: false, foreign_key: { to_table: :active_storage_blobs }
      t.string :variation_digest, null: false
    end
  end
end
