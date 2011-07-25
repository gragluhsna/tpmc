class ReportsController < ApplicationController

  def index
    
    @inventory = get_current_inventory()

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @inventory }
    end

  end  
  
  def get_current_inventory
    inventory = []
    Product.all.each do |product|
      inventory << [{:product => product.code, :product_quantity => ProducerLotDetail.sum(:quantity, :conditions => ["product_id=?",product.id]) }]
    end
    return inventory
  end

end
