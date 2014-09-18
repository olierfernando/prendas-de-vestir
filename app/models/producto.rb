class Producto < ActiveRecord::Base
  belongs_to :ficha
  belongs_to :talla
  belongs_to :color
  belongs_to :terminado
end
