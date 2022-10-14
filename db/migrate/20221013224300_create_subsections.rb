class CreateSubsections < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:subsections)

    create_table :subsections do |t|
      t.string :number
      t.string :name
      t.integer :position
      t.integer :law_id

      t.timestamps
    end
  end
end
