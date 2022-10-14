class CreateIssuerLawTags < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:issuer_law_tags)

    create_table :issuer_law_tags do |t|
      t.integer :tag_id
      t.integer :law_id

      t.timestamps
    end
  end
end
