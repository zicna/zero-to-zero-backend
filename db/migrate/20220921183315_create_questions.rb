class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.belongs_to :level, null: false, foreign_key: true
      t.belongs_to :language, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.string :git_hub_link

      t.timestamps
    end
  end
end
