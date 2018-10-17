
class BoardCase
	attr_accessor :valeur, :reference

	def initialize(valeur, reference)
		@valeur = valeur
		@reference = reference
	end

	def to_s
		@valeur.to_s
	end
end

