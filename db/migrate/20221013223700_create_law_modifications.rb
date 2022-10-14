class CreateLawModifications < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:law_modifications)

    create_table :law_modifications do |t|
      t.string :name
      t.integer :law_id

      t.timestamps
    end
  end
end
