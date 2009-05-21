class HomeController < ApplicationController
  layout 'home'
  
 def index
      @offers = ProductModel.find_by_sql("SELECT * FROM product_models WHERE IsSpecialOffer='t' ORDER BY RANDOM() LIMIT 3");
 end
 
 def sign
     @users = User.find(:all, :conditions => ["LoginName = ? AND Password = ?", params[:loginName], params[:password]])
     if @users.length > 0
       session[:loggedUser] = @users[0]
   end
   @user = session[:loggedUser]
 end
 
 def search 
   if params['id'] != nil
     @list = Product.find(params['id']).product_models
   elsif params['searchKey'] == nil || params['searchKey'].length == 0
     @list = ProductModel.find(:all);
   else
     @list = ProductModel.find_by_sql("SELECT * FROM product_models WHERE id IN(SELECT product_model_id FROM keywords WHERE lower(Word) like lower('%" + params['searchKey'] + "%')) OR product_id IN(SELECT product_id FROM keywords WHERE lower(Word) like lower('%" + params['searchKey'] + "%'))");
   end
 end
end