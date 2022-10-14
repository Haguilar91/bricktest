class CreateDocuments < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:documents)

    create_table :documents do |t|
      t.string :publication_number
      t.string :name
      t.string :url
      t.date :publication_date
      t.text :full_text
      t.integer :start_page
      t.integer :end_page
      t.integer :position
      t.string :issue_id
      t.integer :document_type_id
      t.text :description
      t.text :short_description

      t.timestamps
    end
  end
end
