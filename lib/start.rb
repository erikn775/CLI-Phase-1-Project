class Cli

    def start
        not_done = true
        while not_done
            welcome
            do_game
            not_done = done_yet?
            display_players
        end
        byebye
    end

    def welcome
        Image.welcome_image
        user_answer = gets.chomp
        if user_answer == "yes" || user_answer == "Yes"
            puts "Great!! We will be creating your Fantasy name based on your own name!"
        else
            puts "Well thats too bad. We will be creating your Fantasy name based on your own name anyway!"
        end
    end

    def do_game
        player1 = Player.new
        scrape = Api.new
        player1.species_selector
        player1.get_gender
        player1.name_decision_maker(scrape.name_generator(player1))
    end

    def done_yet?
        puts "Would you like to add another player?"
        user_input = gets.chomp
        if user_input == "yes" || user_input == "Yes"
            return true
        end
            return false
    end

    def byebye
            puts "Have a good day!!"
    end

    def display_players
        puts "Would you like to see all players?"
        user_answer = gets.chomp
        if user_answer == "yes" || user_answer == "Yes"
            Player.all.each {|player| puts player.display}
        end
    end

    
end
