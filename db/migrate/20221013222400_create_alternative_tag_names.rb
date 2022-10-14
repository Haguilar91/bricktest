class CreateAlternativeTagNames < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:alternative_tag_names)

    create_table :alternative_tag_names do |t|
      t.integer :tag_id
      t.string :alternative_name

      t.timestamps
    end
  end
end
