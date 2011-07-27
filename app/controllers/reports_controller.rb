class ReportsController < ApplicationController

  def index
    
    @inventory = get_current_inventory()
    
    @graph = get_chart()
    
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
  
  def get_chart
    #g = GChart.line(:data => [[1, 2], [3, 4]], :legend => ["Monkeys", "Ferrets"])
    chart = GChart.line do |g|
      g.data   = [[0, 1, 2, 3, 4, 5, 6], [3, 2, 4, 1, 5, 0, 6]]
      g.colors = [:red,                  :yellow]
      g.legend = ["Line",                "Wonkiness"]

      g.width  = 600
      g.height = 150

      g.entire_background = "f4f4f4"

      g.axis(:left) { |a| a.range = 0..6 }

      g.axis(:bottom) do |a|
        a.labels          = ["Mon", "Tue", "Thu", "Sun"]
        a.label_positions = [0,     16.67, 50,    100]
        a.text_color = :black
      end

      g.axis(:bottom) do |a|
        a.labels = ["Week 42"]
        a.label_positions = [50]
      end
    end
    return chart.to_url
  end

end
