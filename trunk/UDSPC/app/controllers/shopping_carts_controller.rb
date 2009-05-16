class ShoppingCartsController < ApplicationController
  def index
    @cart = session[:cart]
  end
  def create
    @cart = session[:cart]
    unless @cart
      @cart = []
    end
    item = OrderItem.new
    p = ProductModel.find(params[:id]);
    item.product_model_id = params[:id]
    item.ItemPrice = p.Price
    item.Taxs = 0
    item.Quantity = 1
    @cart << item
    session[:cart] = @cart
    redirect_to :action => :index
  end
end
