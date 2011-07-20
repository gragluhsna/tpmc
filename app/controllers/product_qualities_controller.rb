class ProductQualitiesController < ApplicationController
  # GET /product_qualities
  # GET /product_qualities.xml
  def index
    @product_qualities = ProductQuality.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @product_qualities }
    end
  end

  # GET /product_qualities/1
  # GET /product_qualities/1.xml
  def show
    @product_quality = ProductQuality.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product_quality }
    end
  end

  # GET /product_qualities/new
  # GET /product_qualities/new.xml
  def new
    @product_quality = ProductQuality.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product_quality }
    end
  end

  # GET /product_qualities/1/edit
  def edit
    @product_quality = ProductQuality.find(params[:id])
  end

  # POST /product_qualities
  # POST /product_qualities.xml
  def create
    @product_quality = ProductQuality.new(params[:product_quality])

    respond_to do |format|
      if @product_quality.save
        format.html { redirect_to(@product_quality, :notice => 'Product quality was successfully created.') }
        format.xml  { render :xml => @product_quality, :status => :created, :location => @product_quality }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product_quality.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_qualities/1
  # PUT /product_qualities/1.xml
  def update
    @product_quality = ProductQuality.find(params[:id])

    respond_to do |format|
      if @product_quality.update_attributes(params[:product_quality])
        format.html { redirect_to(@product_quality, :notice => 'Product quality was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product_quality.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_qualities/1
  # DELETE /product_qualities/1.xml
  def destroy
    @product_quality = ProductQuality.find(params[:id])
    @product_quality.destroy

    respond_to do |format|
      format.html { redirect_to(product_qualities_url) }
      format.xml  { head :ok }
    end
  end
end
