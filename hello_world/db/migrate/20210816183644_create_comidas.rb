class CreateComidas < ActiveRecord::Migration[6.1]
  def change
    create_table :comidas do |t|
      t.string :nombre
      t.string :imagen
      t.string :descripcion

      t.timestamps
    end
  end
end
