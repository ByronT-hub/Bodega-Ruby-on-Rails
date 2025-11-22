class Movement < ApplicationRecord
  belongs_to :producto
  enum :movement_kind, { ingreso: 0, salida: 1, ajuste: 2 }
  validates :movement_kind, presence: true
  validates :quantity, numericality: { only_integer: true, greater_than: 0 }
end
