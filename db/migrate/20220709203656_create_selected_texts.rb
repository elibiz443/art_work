class CreateSelectedTexts < ActiveRecord::Migration[7.0]
  def change
    create_table :selected_texts do |t|
      t.integer :art_text_id
      t.integer :art_id

      t.timestamps
    end
  end
end
