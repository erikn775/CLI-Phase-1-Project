class Cli

    def start
        not_done = true
        while not_done
            welcome
            do_game
            not_done = done_yet?
            Player.display_players
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
        name1 = Player.new
        scrape = Api.new
        name1.name_decision_maker(scrape.name_generator(name1.species_selector, name1.get_gender))
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

end

