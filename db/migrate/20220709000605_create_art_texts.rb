class CreateArtTexts < ActiveRecord::Migration[7.0]
  def change
    create_table :art_texts do |t|
      t.string :content
      t.boolean :italic, :default => false
      t.boolean :bold, :default => false
      t.boolean :underline, :default => false
      t.boolean :strikethrough, :default => false
      t.string :size, :default => "2rem"
      t.string :color, :default => "#F5F5F5"
      t.string :color_opacity, :default => "1.0"
      t.string :background, :default => "#2F4F4F"
      t.string :background_opacity, :default => "1.0"
      t.string :alignment, :default => "left"
      t.string :line_height, :default => "1"
      t.string :letter_spacing, :default => "1"
      t.string :font_style, :default => "none"
      t.string :text_shadow, :default => "none"
      t.string :text_shadow_color, :default => "#708090"
      t.string :position, :default => "2 2 2 2"
      t.string :rotation, :default => "none"
      t.string :transformation, :default => "none"
      t.string :curve, :default => "none"
      t.bigint :art_id

      t.timestamps
    end
  end
end
