class CreateLawAccesses < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:law_accesses)

    create_table :law_accesses do |t|
      t.string :name

      t.timestamps
    end
  end
end
