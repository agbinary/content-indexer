class CreateElements < ActiveRecord::Migration[5.1]
  def change
    create_table :elements do |t|
      t.string :tag
      t.text :content
      t.references :page, foreign_key: true, null: false, index: true

      t.timestamps
    end
  end
end
