class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:books)

    create_table :books do |t|
      t.integer :law_id
      t.string :number
      t.string :name
      t.integer :position

      t.timestamps
    end
  end
end
