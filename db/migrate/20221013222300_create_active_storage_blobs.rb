class CreateActiveStorageBlobs < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:active_storage_blobs)

    create_table :active_storage_blobs do |t|
      t.string :key, null: false
      t.bigint :byte_size, null: false
      t.string :checksum, null: false
      t.string :service_name, null: false
      t.text :metadata
      t.string :filename, null: false
      t.string :content_type
    end
  end
end
