class HomeController < ApplicationController
 
 def index
      @categories = Category.find(:all);
      @offers = ProductModel.find_by_sql("SELECT * FROM product_models WHERE IsSpecialOffer='t' ORDER BY RANDOM() LIMIT 3");
 end
 
 def sign
  @categories = Category.find(:all);
     
 end
 
 def search
  @categories = Category.find(:all);
 
   if params['id'] != nil
     @list = Product.find(params['id']).product_models
   elsif params['searchKey'] == nil || params['searchKey'].length == 0
     @list = ProductModel.find(:all);
   else
     @list = ProductModel.find_by_sql("SELECT * FROM product_models WHERE id IN(SELECT product_model_id FROM keywords WHERE lower(Word) like lower('%" + params['searchKey'] + "%')) OR product_id IN(SELECT product_id FROM keywords WHERE lower(Word) like lower('%" + params['searchKey'] + "%'))");
   end
 end
end