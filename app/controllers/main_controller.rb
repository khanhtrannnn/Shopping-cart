class MainController < ApplicationController

  def main_page
    if params[:search]
      @products = Product.search(params[:search]).order('created_at ASC')
      @product_types = ProductType.all
    else
      @products = Product.all.order('created_at ASC')
      @product_types = ProductType.all
    end
  end

  private
  def product_type_params
    params.require(:product_type).permit(:type_name)
  end
end
