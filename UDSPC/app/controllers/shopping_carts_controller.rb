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
  def delete
    if params["all"]
      session[:cart] = nil
    elsif params["i"]
      session[:cart].slice!(params["i"].to_i)
      if session[:cart].length == 0 
        session[:cart] = nil
      end
    end
    
    redirect_to :action => :index
  end
  
  def confirm
    tp = 0
    for product in session[:cart]
      tp =tp + product.ItemPrice*product.Quantity*(1+product.Taxs)
    end
    order = Order.new
    order.OrderDate = Time.now
    order.OrderStatus = 0
    order.TotalPrice = tp
    order.PaymentMethod = 0
    order.PurchaseNumber = rand(1000000)
    order.ShippingCosts = 10 * session[:cart].length
    order.customer_id = session[:loggedCustomer].id
    order.save
    
    for product in session[:cart]
      product.order_id = order.id
      product.save
    end
    session[:cart] = nil
  end
end
