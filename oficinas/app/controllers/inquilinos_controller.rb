class InquilinosController < ApplicationController
    #los filtros como el siguiente, se colocan al principio del controller y se definen abajo
    before_action :buscar_inquilino, only: [:mostrar, :editar, :eliminar]

  # GET
  def listar
    @lista_inquilinos = Inquilino.all.order(id: :asc)
  end

  # GET - Devolver el formulario para crear un inquilino
  def crear
      @inquilino = Inquilino.new
      @oficinas = Oficina.select(:id, :codigo).order(codigo: :asc)
  end

  # GET
  def mostrar


  end

  # GET
  def editar
      @oficinas = Oficina.select(:id, :codigo).order(codigo: :asc)
  end

  # POST - Recibir los datos de un inquilino y guardar en la BD
  def guardar
      
      @inquilino = Inquilino.new(inquilino_params)

      if @inquilino.save
          redirect_to "/oficinas/listar"
      else
          @oficinas = Oficina.select(:id, :codigo).order(codigo: :asc)
          render :crear
      end
  end

  # PUT/PATCH
  def actualizar
      if @inquilino.update(inquilino_params)
          redirect_to inquilino_path
      else
        @oficina.select = Oficina.select(:id, :codigo).order(codigo: :asc)
        render :editar
      end

  end

  # DELETE
  def eliminar
    @inquilino.destroy

    redirect_to action: :listar
    
  end

  private
  def inquilino_params
    return valores = params.require(:inquilino).permit(:nombre, :apellido, :telefono, :rut, :oficina_id)
  end

  def buscar_inquilino
    @inquilino = Inquilino.find(params[:id])
  end

end