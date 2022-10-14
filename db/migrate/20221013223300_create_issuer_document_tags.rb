class CreateIssuerDocumentTags < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:issuer_document_tags)

    create_table :issuer_document_tags do |t|
      t.integer :document_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
