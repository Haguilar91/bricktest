class CreateTags < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:tags)

    create_table :tags do |t|
      t.integer :tag_type_id
      t.string :name

      t.timestamps
    end
  end
end
