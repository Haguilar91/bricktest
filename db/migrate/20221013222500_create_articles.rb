class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:articles)

    create_table :articles do |t|
      t.integer :law_id
      t.integer :position
      t.text :body
      t.string :number

      t.timestamps
    end
  end
end
