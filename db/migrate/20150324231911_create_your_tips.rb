class CreateYourTips < ActiveRecord::Migration
  def change
    create_table :your_tips do |t|
      t.string :tip
      t.text :description

      t.timestamps null: false
    end
  end
end
