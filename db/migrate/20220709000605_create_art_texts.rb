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
      t.integer :padding_top, :default => 0
      t.integer :padding_left, :default => 0
      t.integer :padding_size_button, :default => 1
      t.string :transform, :default => "rotate(0deg)"
      t.boolean :curve, :default => false
      t.string :view_box, :default => "-50 20 600 600"
      t.bigint :art_id

      t.timestamps
    end
  end
end
