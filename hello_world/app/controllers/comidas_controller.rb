class ComidasController < ApplicationController
  
    def hamburguesa

        @comida = Comida.first

    end
  
  end