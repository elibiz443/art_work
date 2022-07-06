class CreateArts < ActiveRecord::Migration[7.0]
  def change
    create_table :arts do |t|
      t.string :name, :default => "Untitled"
      t.string :size, :default => "800 x 400"
      t.string :background_color, :default => "#D6EAF8"
      t.string :background_style

      t.timestamps
    end
  end
end
