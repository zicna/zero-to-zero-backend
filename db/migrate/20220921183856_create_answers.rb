class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.belongs_to :take, null: false, foreign_key: true
      t.string :git_hub_link

      t.timestamps
    end
  end
end
