Rails.application.routes.draw do
  # index
  # get 'home',             to: 'home#index',  as: 'index'
  
  


  #Paginas
  root 'paginas#inicio'

  get     'sesiones', to:'sesiones#login', as: 'login'
  post    'sesiones', to: 'sesiones#iniciar'
  delete  'sesiones', to: 'sesiones#cerrar'


  get '/carrito', to: 'paginas#carro', as: 'carrito'
  get 'enviar', to: 'paginas#enviar_saludo'
  
  #carros
  post   'carros/:id_producto',          to: 'carros#agregar_producto',            as: 'agregar_producto'
  put 'carros/:id_producto/cantidad',   to: 'carros#aumentar_cantidad_producto',  as: 'aumentar_producto'
  delete 'carros/:id_producto',          to: 'carros#eliminar_producto',           as: 'eliminar_producto'
  delete 'carros/:id_producto/cantidad', to: 'carros#disminuir_cantidad_producto', as: 'disminuir_producto'


  # categorias
  get 'categorias',             to: 'categorias#listar',  as: 'categorias'
  get 'categorias/crear',       to: 'categorias#crear',   as: 'nueva_categoria'
  get 'categorias/:id',         to: 'categorias#mostrar', as: 'categoria'
  get 'categorias/:id/editar',  to: 'categorias#editar',  as: 'editar_categoria'

  post    'categorias',     to: 'categorias#guardar'
  put     'categorias/:id', to: 'categorias#actualizar'
  patch   'categorias/:id', to: 'categorias#actualizar'
  delete  'categorias/:id', to: 'categorias#eliminar'

  # destinos
  get 'destinos',             to: 'destinos#listar',  as: 'destinos'
  get 'destinos/crear',       to: 'destinos#crear',   as: 'nuevo_destino'
  get 'destinos/:id',         to: 'destinos#mostrar', as: 'destino'
  get 'destinos/:id/editar',  to: 'destinos#editar',  as: 'editar_destino'

  post    'destinos',     to: 'destinos#guardar'
  put     'destinos/:id', to: 'destinos#actualizar'
  patch   'destinos/:id', to: 'destinos#actualizar'
  delete  'destinos/:id', to: 'destinos#eliminar'
  
  # productos
  get 'productos',              to: 'productos#listar',   as: 'productos'
  get 'productos/crear',        to: 'productos#crear',    as: 'nuevo_producto'
  get 'productos/:id',          to: 'productos#mostrar',  as: 'producto'
  get 'productos/:id/editar',   to: 'productos#editar',   as: 'editar_producto'

  post    'productos',     to: 'productos#guardar'
  put     'productos/:id', to: 'productos#actualizar'
  patch   'productos/:id', to: 'productos#actualizar'
  delete  'productos/:id', to: 'productos#eliminar'

  delete  'productos/:id/imagenes/:id_imagen',  to: 'productos#eliminar_foto',  as: 'eliminar_foto'

  #Pedidos
  get 'pedidos/crear',  to: 'pedidos#crear',  as: 'nuevo_pedido'
  get 'pagar',        to: 'pedidos#pagar',    as: 'pagar'

  post 'pedidos',       to: 'pedidos#guardar', as: 'crear_pedido_cliente'

  #Paginas_admin
  get 'paginas_admin',              to: 'paginas_admin#listar',   as: 'pedidos'
  get 'paginas_admin/:id',          to: 'paginas_admin#mostrar',  as: 'pedido'




end