class ProducerLotQualitiesController < ApplicationController
  # GET /producer_lot_qualities
  # GET /producer_lot_qualities.xml
  def index
    @producer_lot_qualities = ProducerLotQuality.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @producer_lot_qualities }
    end
  end

  # GET /producer_lot_qualities/1
  # GET /producer_lot_qualities/1.xml
  def show
    @producer_lot_quality = ProducerLotQuality.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @producer_lot_quality }
    end
  end

  # GET /producer_lot_qualities/new
  # GET /producer_lot_qualities/new.xml
  def new
    @producer_lot_quality = ProducerLotQuality.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @producer_lot_quality }
    end
  end

  # GET /producer_lot_qualities/1/edit
  def edit
    @producer_lot_quality = ProducerLotQuality.find(params[:id])
  end

  # POST /producer_lot_qualities
  # POST /producer_lot_qualities.xml
  def create
    @producer_lot_quality = ProducerLotQuality.new(params[:producer_lot_quality])

    respond_to do |format|
      if @producer_lot_quality.save
        format.html { redirect_to(@producer_lot_quality, :notice => 'Producer lot quality was successfully created.') }
        format.xml  { render :xml => @producer_lot_quality, :status => :created, :location => @producer_lot_quality }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @producer_lot_quality.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /producer_lot_qualities/1
  # PUT /producer_lot_qualities/1.xml
  def update
    @producer_lot_quality = ProducerLotQuality.find(params[:id])

    respond_to do |format|
      if @producer_lot_quality.update_attributes(params[:producer_lot_quality])
        format.html { redirect_to(@producer_lot_quality, :notice => 'Producer lot quality was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @producer_lot_quality.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /producer_lot_qualities/1
  # DELETE /producer_lot_qualities/1.xml
  def destroy
    @producer_lot_quality = ProducerLotQuality.find(params[:id])
    @producer_lot_quality.destroy

    respond_to do |format|
      format.html { redirect_to(producer_lot_qualities_url) }
      format.xml  { head :ok }
    end
  end
end
