class CreateDocumentTypes < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:document_types)

    create_table :document_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
