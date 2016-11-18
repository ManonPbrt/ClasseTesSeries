class CreateClassementSeries < ActiveRecord::Migration[5.0]
  def change
    create_table :classement_series do |t|
      t.text :nom
      t.text :genre
      t.text :synopsis
      t.integer :note

      t.timestamps
    end
  end
end
