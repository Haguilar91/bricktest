class CreateJudgementAuxiliaries < ActiveRecord::Migration[7.0]
  def change
    return unless reverting? || !table_exists?(:judgement_auxiliaries)

    create_table :judgement_auxiliaries do |t|
      t.integer :document_id
      t.string :applicable_laws

      t.timestamps
    end
  end
end
