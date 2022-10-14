class CreateLawTags < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:law_tags)

    create_table :law_tags do |t|
      t.integer :law_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
