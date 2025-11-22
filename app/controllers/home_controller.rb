class HomeController < ApplicationController
  def index
 
  end

  def get_data
        @productos_count = Producto.count
    @movements_count = Movement.count
    @last_movement_at = Movement.maximum(:created_at)
  end
end
