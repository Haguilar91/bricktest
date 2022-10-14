class CreateUserDocumentDownloadTrackers < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:user_document_download_trackers)

    create_table :user_document_download_trackers do |t|
      t.integer :downloads
      t.string :fingerprint
      t.timestamp :period_start

      t.timestamps
    end
  end
end
