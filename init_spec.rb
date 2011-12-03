require	'rubygems'
require 'rspec'

class Cell
	def self.alive
		self.new
	end

	def self.dead
		
	end
end

class Population
	def self.with(grid)
		self.new
	end

	def evolve
		
	end
end


describe "Evolving only the center cell" do
	def Alive
		Cell.alive
	end

	it	"stays alive with two live neighbors" do
		center_cell = Cell.alive
		Population.with([[alive, alive, dead], [dead, center_cell, dead], [dead, dead, dead]]).evolve
		center_cell.should be_alive
	end

end