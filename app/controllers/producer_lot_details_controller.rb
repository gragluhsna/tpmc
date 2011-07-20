class ProducerLotDetailsController < ApplicationController
  # GET /producer_lot_details
  # GET /producer_lot_details.xml
  def index
    @producer_lot_details = ProducerLotDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @producer_lot_details }
    end
  end

  # GET /producer_lot_details/1
  # GET /producer_lot_details/1.xml
  def show
    @producer_lot_detail = ProducerLotDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @producer_lot_detail }
    end
  end

  # GET /producer_lot_details/new
  # GET /producer_lot_details/new.xml
  def new
    @producer_lot_detail = ProducerLotDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @producer_lot_detail }
    end
  end

  # GET /producer_lot_details/1/edit
  def edit
    @producer_lot_detail = ProducerLotDetail.find(params[:id])
  end

  # POST /producer_lot_details
  # POST /producer_lot_details.xml
  def create
    @producer_lot_detail = ProducerLotDetail.new(params[:producer_lot_detail])

    respond_to do |format|
      if @producer_lot_detail.save
        format.html { redirect_to(@producer_lot_detail, :notice => 'Producer lot detail was successfully created.') }
        format.xml  { render :xml => @producer_lot_detail, :status => :created, :location => @producer_lot_detail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @producer_lot_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /producer_lot_details/1
  # PUT /producer_lot_details/1.xml
  def update
    @producer_lot_detail = ProducerLotDetail.find(params[:id])

    respond_to do |format|
      if @producer_lot_detail.update_attributes(params[:producer_lot_detail])
        format.html { redirect_to(@producer_lot_detail, :notice => 'Producer lot detail was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @producer_lot_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /producer_lot_details/1
  # DELETE /producer_lot_details/1.xml
  def destroy
    @producer_lot_detail = ProducerLotDetail.find(params[:id])
    @producer_lot_detail.destroy

    respond_to do |format|
      format.html { redirect_to(producer_lot_details_url) }
      format.xml  { head :ok }
    end
  end
end
