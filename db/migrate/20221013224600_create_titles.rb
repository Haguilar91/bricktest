class CreateTitles < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:titles)

    create_table :titles do |t|
      t.integer :position
      t.string :name
      t.integer :law_id
      t.string :number

      t.timestamps
    end
  end
end
