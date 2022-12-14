class CreateTagTypes < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:tag_types)

    create_table :tag_types do |t|
      t.string :name

      t.timestamps
    end
  end
end
