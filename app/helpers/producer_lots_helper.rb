module ProducerLotsHelper

	def producers_for_select
		Producer.find(:all, :order => 'name').collect {|f| [ f.name, f.id ] }
	end

end
