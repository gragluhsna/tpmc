require 'test_helper'

class ProducerLotsHelperTest < ActionView::TestCase
  
  test "should setup product lot details" do
    @producer_lot = setup_producer_lot(ProducerLot.new)
    assert_equal(4, @producer_lot.producer_lot_details.size) 
  end
  
end
