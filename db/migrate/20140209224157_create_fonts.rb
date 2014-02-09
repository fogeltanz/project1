class CreateFonts < ActiveRecord::Migration
  def change
    create_table :fonts do |t|
      t.string :weightname
      t.string :optimalsize
      t.integer :typeface_id

      t.timestamps
    end
  end
end
