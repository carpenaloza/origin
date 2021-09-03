class CarrosContenido < ApplicationRecord
  after_save :actualizar_total
  after_destroy :actualizar_total

  belongs_to :carro
  belongs_to :producto

  private

  def actualizar_total
      # self.carro.total = self.carro.productos.map{ |producto| producto.precio }.sum
      # self.carro.save
      carro = self.carro
      subtotal = 0
      carro.carros_contenidos.each do |contenido|
        subtotal += contenido.cantidad * contenido.producto.precio
      end
      carro.total = subtotal
      carro.save
  end
end
