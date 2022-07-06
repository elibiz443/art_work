class CreateIcons < ActiveRecord::Migration[7.0]
  def change
    create_table :icons do |t|
      t.string :attachment
      t.bigint :art_id

      t.timestamps
    end
  end
end
