class CreateTexts < ActiveRecord::Migration[7.0]
  def change
    create_table :texts do |t|
      t.string :text_decoration, :default => "bold"
      t.string :font_size, :default => "12px"
      t.string :text_color, :default => "#000000"
      t.string :text_alignment, :default => "left"
      t.string :line_height, :default => "1"
      t.string :letter_spacing, :default => "1"
      t.string :font_style, :default => "San Serif"
      t.string :background_color, :default => "#ccc"
      t.string :background_opacity, :default => "10%"
      t.string :text_shadow, :default => false
      t.string :text_content
      t.bigint :art_id

      t.timestamps
    end
  end
end
