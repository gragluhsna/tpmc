class ProductQualityPurchaseRatesController < ApplicationController
  # GET /product_quality_purchase_rates
  # GET /product_quality_purchase_rates.xml
  def index
    @product_quality_purchase_rates = ProductQualityPurchaseRate.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @product_quality_purchase_rates }
    end
  end

  # GET /product_quality_purchase_rates/1
  # GET /product_quality_purchase_rates/1.xml
  def show
    @product_quality_purchase_rate = ProductQualityPurchaseRate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @product_quality_purchase_rate }
    end
  end

  # GET /product_quality_purchase_rates/new
  # GET /product_quality_purchase_rates/new.xml
  def new
    @product_quality_purchase_rate = ProductQualityPurchaseRate.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @product_quality_purchase_rate }
    end
  end

  # GET /product_quality_purchase_rates/1/edit
  def edit
    @product_quality_purchase_rate = ProductQualityPurchaseRate.find(params[:id])
  end

  # POST /product_quality_purchase_rates
  # POST /product_quality_purchase_rates.xml
  def create
    @product_quality_purchase_rate = ProductQualityPurchaseRate.new(params[:product_quality_purchase_rate])

    respond_to do |format|
      if @product_quality_purchase_rate.save
        format.html { redirect_to(@product_quality_purchase_rate, :notice => 'Product quality purchase rate was successfully created.') }
        format.xml  { render :xml => @product_quality_purchase_rate, :status => :created, :location => @product_quality_purchase_rate }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @product_quality_purchase_rate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_quality_purchase_rates/1
  # PUT /product_quality_purchase_rates/1.xml
  def update
    @product_quality_purchase_rate = ProductQualityPurchaseRate.find(params[:id])

    respond_to do |format|
      if @product_quality_purchase_rate.update_attributes(params[:product_quality_purchase_rate])
        format.html { redirect_to(@product_quality_purchase_rate, :notice => 'Product quality purchase rate was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @product_quality_purchase_rate.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_quality_purchase_rates/1
  # DELETE /product_quality_purchase_rates/1.xml
  def destroy
    @product_quality_purchase_rate = ProductQualityPurchaseRate.find(params[:id])
    @product_quality_purchase_rate.destroy

    respond_to do |format|
      format.html { redirect_to(product_quality_purchase_rates_url) }
      format.xml  { head :ok }
    end
  end
end
