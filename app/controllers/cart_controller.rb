class CartController < ApplicationController
  def show
    @total_cart = 0

    if session[:cart].nil?
      redirect_to '/main/main_page', notice: 'No product in your cart now'
    else
      session[:cart].each do |item|
        @total_cart += item['total_price']
      end
    end
  end

  def delete

    session[:cart].each do |item|

      if item['product_id'] == params[:id]
        session[:cart].delete(item)
      end

    end

    redirect_to '/cart/show'
  end

  def buy_success
  end
end
