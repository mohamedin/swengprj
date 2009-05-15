class JobOppertunitiesController < ApplicationController
  # GET /job_oppertunities
  # GET /job_oppertunities.xml
  def index
    @job_oppertunities = JobOppertunity.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @job_oppertunities }
    end
  end

  # GET /job_oppertunities/1
  # GET /job_oppertunities/1.xml
  def show
    @job_oppertunity = JobOppertunity.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @job_oppertunity }
    end
  end

  # GET /job_oppertunities/new
  # GET /job_oppertunities/new.xml
  def new
    @job_oppertunity = JobOppertunity.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @job_oppertunity }
    end
  end

  # GET /job_oppertunities/1/edit
  def edit
    @job_oppertunity = JobOppertunity.find(params[:id])
  end

  # POST /job_oppertunities
  # POST /job_oppertunities.xml
  def create
    @job_oppertunity = JobOppertunity.new(params[:job_oppertunity])

    respond_to do |format|
      if @job_oppertunity.save
        flash[:notice] = 'JobOppertunity was successfully created.'
        format.html { redirect_to(@job_oppertunity) }
        format.xml  { render :xml => @job_oppertunity, :status => :created, :location => @job_oppertunity }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @job_oppertunity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /job_oppertunities/1
  # PUT /job_oppertunities/1.xml
  def update
    @job_oppertunity = JobOppertunity.find(params[:id])

    respond_to do |format|
      if @job_oppertunity.update_attributes(params[:job_oppertunity])
        flash[:notice] = 'JobOppertunity was successfully updated.'
        format.html { redirect_to(@job_oppertunity) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @job_oppertunity.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /job_oppertunities/1
  # DELETE /job_oppertunities/1.xml
  def destroy
    @job_oppertunity = JobOppertunity.find(params[:id])
    @job_oppertunity.destroy

    respond_to do |format|
      format.html { redirect_to(job_oppertunities_url) }
      format.xml  { head :ok }
    end
  end
end
