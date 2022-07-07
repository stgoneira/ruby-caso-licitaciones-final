class CreateRegiones < ActiveRecord::Migration[6.1]
  def change
    create_table :regiones do |t|
      t.string :nombre, null: false

      t.timestamps
    end
  end
end
