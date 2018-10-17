require_relative "./boardcase"


class Board
	include Enumerable

	attr_accessor :tableau

	def initialize

		@case1 = BoardCase.new("1", 1)
        @case2 = BoardCase.new("2", 2)
        @case3 = BoardCase.new("3", 3)
        @case4 = BoardCase.new("4", 4)
        @case5 = BoardCase.new("5", 5)
        @case6 = BoardCase.new("6", 6)
        @case7 = BoardCase.new("7", 7)
        @case8 = BoardCase.new("8", 8)
        @case9 = BoardCase.new("9", 9)
  
        @tableau = [[@case1, @case2, @case3],[@case4, @case5, @case6],[@case7, @case8, @case9]]
	end

    def to_s
    #Pour afficher le plateau
        @tableau.each do |x|
            	puts " --- --- ---"
        	    puts "| "+x[0].to_s+" | "+x[1].to_s+" | "+x[2].to_s+" |"
            end
    	        puts " --- --- ---"
	end


	def play(valeur, case_num)

		case case_num
		when 1
			if @tableau[0][0].to_s == "1".to_s
				@tableau[0][0] = valeur
			else
				puts "Le champ n'est pas vide!! SVP, choississez-en un autre!! "
				return false
			end
		when 2
			if @tableau[0][1].to_s == "2".to_s
				@tableau[0][1] = valeur
			else
				puts "Le champ n'est pas vide!! SVP, choississez-en un autre!! "
				return false
			end
		when 3
			if @tableau[0][2].to_s == "3".to_s
				@tableau[0][2] = valeur
			else
				puts "Le champ n'est pas vide!! SVP, choississez-en un autre!! "
				return false
			end
		when 4
			if @tableau[1][0].to_s == "4".to_s
				@tableau[1][0] = valeur
			else
				puts "Le champ n'est pas vide!! SVP, choississez-en un autre!! "
				return false
			end
		when 5
			if @tableau[1][1].to_s == "5".to_s
				@tableau[1][1] = valeur
			else
				puts "Le champ n'est pas vide!! SVP, choississez-en un autre!! "
				return false
			end
		when 6
			if @tableau[1][2].to_s == "6".to_s
				@tableau[1][2] = valeur
			else
				puts "Le champ n'est pas vide!! SVP, choississez-en un autre!! "
				return false
			end
		when 7
			if @tableau[2][0].to_s == "7".to_s
				@tableau[2][0] = valeur
			else
				puts "Le champ n'est pas vide!! "
				return false
			end
		when 8
			if @tableau[2][1].to_s == "8".to_s
				@tableau[2][1] = valeur
			else
				puts "Le champ n'est pas vide!! "
				return false
			end
		when 9
			if @tableau[2][2].to_s == "9".to_s
				@tableau[2][2] = valeur
			else
				puts "Le champ n'est pas vide!! "
				return false
			end
		end


	end

	def victory?

		      #Méthode qui check si quelqu'un a gagné
      if
      #Les cas possibles de victoire
        (@tableau[0][0] == @tableau[0][1]) && (@tableau[0][1] == @tableau[0][2]) ||
        (@tableau[1][0] == @tableau[1][1]) && (@tableau[1][1] == @tableau[1][2]) ||
        (@tableau[2][0] == @tableau[2][1]) && (@tableau[2][1] == @tableau[2][2]) ||
        (@tableau[0][0] == @tableau[1][0]) && (@tableau[1][0] == @tableau[2][0]) ||
        (@tableau[0][1] == @tableau[1][1]) && (@tableau[1][1] == @tableau[2][1]) ||
        (@tableau[0][2] == @tableau[1][2]) && (@tableau[1][2] == @tableau[2][2]) ||
        (@tableau[0][0] == @tableau[1][1]) && (@tableau[1][1] == @tableau[2][2]) ||
        (@tableau[0][2] == @tableau[1][1]) && (@tableau[1][1] == @tableau[2][0])
      #On retourne true s'il y a un victoire
        true
      else
      #On retourne false sinon
        false 
      end
    end
end
