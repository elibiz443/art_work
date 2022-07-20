class CreateArtTexts < ActiveRecord::Migration[7.0]
  def change
    create_table :art_texts do |t|
      t.string :content
      t.string :font_family, :default => "'Luckiest Guy', cursive"
      t.string :font_style, :default => "normal"
      t.integer :font_weight, :default => 400
      t.string :text_decoration, :default => "none"
      t.string :size, :default => "2rem"
      t.string :color, :default => "rgba(21, 67, 96, 1.0)"
      t.string :color_opacity, :default => "1.0"
      t.string :background, :default => "transparent"
      t.string :background_opacity, :default => "1.0"
      t.integer :background_padding, :default => 1
      t.string :border_radius, :default => "none"
      t.integer :line_height, :default => 3
      t.decimal :letter_spacing, :default => 0
      t.integer :text_shadow, :default => 0
      t.string :text_shadow_color, :default => "rgba(93, 173, 226, 1.0)"
      t.string :text_shadow_color_opacity, :default => "1.0"
      t.integer :margin_top, :default => 0
      t.integer :margin_left, :default => 0
      t.integer :transform, :default => 0
      t.boolean :curve, :default => false
      t.string :view_box, :default => "0 0 600 600"
      t.string :stroke_color, :default => "transparent"
      t.string :stroke_color_opacity, :default => "1.0"
      t.integer :stroke_width, :default => 1
      t.bigint :art_id

      t.timestamps
    end
  end
end
