class CreateDocumentTags < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:document_tags)

    create_table :document_tags do |t|
      t.integer :document_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
