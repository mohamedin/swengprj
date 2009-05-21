class ShoppingCartsController < ApplicationController
  layout 'home'
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
  
  def update
    @cart = session[:cart]
    unless @cart
      @cart = []
    end
    params.each do|name,value|
      if name["item_"]
        @cart[name[5,name.length].to_i].Quantity = value.to_i
      end
    end
    if params[:commit] != 'Check out'
      redirect_to :controller => 'home', :action => :index
    end
  end
end
