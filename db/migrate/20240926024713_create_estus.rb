class CreateEstus < ActiveRecord::Migration[7.1]
  def change
    create_table :estus do |t|
      t.string :name
      t.string :apellido
      t.string :carnet
      t.string :carrera

      t.timestamps
    end
  end
end
