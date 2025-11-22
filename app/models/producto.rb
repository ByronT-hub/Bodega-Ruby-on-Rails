
class Producto < ApplicationRecord
  has_many :movements, dependent: :destroy
  
  validates :nombre, :referencia, :descripcion, presence: true
end