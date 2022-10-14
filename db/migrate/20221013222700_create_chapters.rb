class CreateChapters < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:chapters)

    create_table :chapters do |t|
      t.integer :law_id
      t.integer :position
      t.string :name
      t.string :number

      t.timestamps
    end
  end
end
