class CreateArts < ActiveRecord::Migration[7.0]
  def change
    create_table :arts do |t|
      t.string :name, :default => "Untitled"
      t.integer :width, :default => 1350
      t.integer :height, :default => 900
      t.string :background_color, :default => "#EBF5FB"
      t.string :background_color_opacity, :default => "1.0"
      t.string :radial_gradient, :default => "none"
      t.string :radial_gradient_color, :default => "rgba(0, 255, 255, 1.0)"

      t.timestamps
    end
  end
end
