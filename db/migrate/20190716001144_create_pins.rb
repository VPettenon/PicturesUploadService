class CreatePins < ActiveRecord::Migration[5.2]
  def change
    create_table :pins do |t|
      t.text :description
      t.string :owner

      t.timestamps
    end
  end
end
