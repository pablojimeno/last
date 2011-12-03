require	'rubygems'
require 'spec'

describe "Evolving only the center cell" do
	def Alive
		Cell.alive
	end

	it	"stays alive with two live neighbors" do
		center_cell = Cell.alive
		Population.with([alive, alive, dead], [dead, center_cell, dead], [dead, dead, dead]).evolve
		center_cell.should be_alive
	end

end