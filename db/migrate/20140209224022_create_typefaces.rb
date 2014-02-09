class CreateTypefaces < ActiveRecord::Migration
  def change
    create_table :typefaces do |t|
      t.string :familyname
      t.string :designer
      t.integer :year

      t.timestamps
    end
  end
end
