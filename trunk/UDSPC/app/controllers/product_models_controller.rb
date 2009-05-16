class ProductModelsController < ApplicationController
  layout 'home'
  
  # GET /product_models
  # GET /product_models.xml
  def index
    @product_models = ProductModel.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @product_models }
    end
  end

  # GET /product_models/1
  # GET /product_models/1.xml
  def show
    @product_model = ProductModel.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product_model }
    end
  end

  # GET /product_models/new
  # GET /product_models/new.xml
  def new
    @product_model = ProductModel.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product_model }
    end
  end

  # GET /product_models/1/edit
  def edit
    @product_model = ProductModel.find(params[:id])
  end

  # POST /product_models
  # POST /product_models.xml
  def create
    @product_model = ProductModel.new(params[:product_model])

    respond_to do |format|
      if @product_model.save
        flash[:notice] = 'ProductModel was successfully created.'
        format.html { redirect_to(@product_model) }
        format.xml  { render :xml => @product_model, :status => :created, :location => @product_model }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_models/1
  # PUT /product_models/1.xml
  def update
    @product_model = ProductModel.find(params[:id])

    respond_to do |format|
      if @product_model.update_attributes(params[:product_model])
        flash[:notice] = 'ProductModel was successfully updated.'
        format.html { redirect_to(@product_model) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product_model.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_models/1
  # DELETE /product_models/1.xml
  def destroy
    @product_model = ProductModel.find(params[:id])
    @product_model.destroy

    respond_to do |format|
      format.html { redirect_to(product_models_url) }
      format.xml  { head :ok }
    end
  end
end
