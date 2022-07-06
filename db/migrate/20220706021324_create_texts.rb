class CreateTexts < ActiveRecord::Migration[7.0]
  def change
    create_table :texts do |t|
      t.string :text_decoration
      t.string :font_size
      t.string :text_color
      t.string :text_alignment
      t.string :line_height
      t.string :letter_spacing
      t.string :font_style
      t.string :background_color
      t.string :background_opacity
      t.string :text_shadow
      t.string :text_content
      t.bigint :art_id

      t.timestamps
    end
  end
end
