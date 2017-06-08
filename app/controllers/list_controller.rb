class ListController < ApplicationController
  def show
    @list = Product.find(params[:id])
  end

  def add

    price = Product.find(params[:id])
    total_price = params[:product][:amount].to_f * price.unit_price
    session[:cart] ||= []
    is_insert = true
    session[:cart].each do |item|
      if item['product_id'] == params[:id]
        item['amount'] += params[:product][:amount].to_i

        total_price = params[:product][:amount].to_f * price.unit_price

        item['total_price'] += total_price
        is_insert = false
      end
    end

    if insert
      session[:cart] << {:product_id => params[:id], :amount => params[:product][:amount].to_i, :total_price => total_price.to_i}
    end

    redirect_to "/list/show/#{params[:id]}"

  end


end
