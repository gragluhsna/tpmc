class ProducerLotsController < ApplicationController
  # GET /producer_lots
  # GET /producer_lots.xml
  def index
    @producer_lots = ProducerLot.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @producer_lots }
    end
  end

  # GET /producer_lots/1
  # GET /producer_lots/1.xml
  def show
    @producer_lot = ProducerLot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @producer_lot }
    end
  end

  # GET /producer_lots/new
  # GET /producer_lots/new.xml
  def new
    @producer_lot = ProducerLot.new
    @producer_lot.producer_lot_details.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @producer_lot }
    end
  end

  # GET /producer_lots/1/edit
  def edit
    @producer_lot = ProducerLot.find(params[:id])
  end

  # POST /producer_lots
  # POST /producer_lots.xml
  def create
    @producer_lot = ProducerLot.new(params[:producer_lot])
    
    respond_to do |format|
      if @producer_lot.save
        format.html { redirect_to(@producer_lot, :notice => 'Producer lot was successfully created.') }
        format.xml  { render :xml => @producer_lot, :status => :created, :location => @producer_lot }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @producer_lot.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /producer_lots/1
  # PUT /producer_lots/1.xml
  def update
    @producer_lot = ProducerLot.find(params[:id])

    respond_to do |format|
      if @producer_lot.update_attributes(params[:producer_lot])
        format.html { redirect_to(@producer_lot, :notice => 'Producer lot was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @producer_lot.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /producer_lots/1
  # DELETE /producer_lots/1.xml
  def destroy
    @producer_lot = ProducerLot.find(params[:id])
    @producer_lot.destroy

    respond_to do |format|
      format.html { redirect_to(producer_lots_url) }
      format.xml  { head :ok }
    end
  end
end
