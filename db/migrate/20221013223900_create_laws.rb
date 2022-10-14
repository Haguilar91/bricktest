class CreateLaws < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:laws)

    create_table :laws do |t|
      t.integer :law_access_id
      t.string :creation_number
      t.text :modifications
      t.string :name

      t.timestamps
    end
  end
end
