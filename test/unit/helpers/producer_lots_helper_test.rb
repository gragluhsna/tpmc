require 'test_helper'

class ProducerLotsHelperTest < ActionView::TestCase
  
  test "should setup product lot details" do
    producer_lot = setup_producer_lot(ProducerLot.new)
    assert_equal(4, producer_lot.producer_lot_details.size) 
  end
  
  test "should build filter criteria from params" do
    params = {:producer=>{:id=>1}, :received_date => "2011-05-11"}
    filterCriteria = build_filter_criteria(params)
    assert_equal("producer_id = '1' AND received_date = '2011-05-11'",filterCriteria)
  end
  
end
