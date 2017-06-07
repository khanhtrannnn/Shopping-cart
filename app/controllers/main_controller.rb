class MainController < ApplicationController

  def main_page
    if params[:search]
      @products = Product.search(params[:search]).order('created_at DESC')
    else
      @products = Product.all.order('created_at DESC')
    end

    @product_types = ProductType.all
    @products = Product.all
  end

  def search
  end

  def cart
  end

  private
  def product_type_params
    params.require(:product_type).permit(:type_name)
  end
end
