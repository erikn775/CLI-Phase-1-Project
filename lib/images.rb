class Image

    def self.welcome_image
        puts "
                    ,     \\    /       ,        
                   / \\    )\\__/(     / \\      
                  /   \\  (_\\  /_)   /   \\     
            _____/_____\\__\\@  @/___/_____\\____ 
            |             |\\../|             |
            |              \\VV/              |
            |     Welcome are you ready?     |
            |________________________________|
            |    /\\ /      \\\\       \ /\\     | 
            |  /   V        ))       V  \\   | 
            |/     `       //        '    \\ | 
             `             V                '
                 Please enter Yes or No"
    end

    def self.error_message
        puts"
          _________
         / ======= \\
        / __________\\
       | ___________ |
       | | -       | |
       | |         | |
       | |_________| |_________________________
       \\=____________/   computer says no       )
       / ''''''''''''\\                         /
      / ::::::::::::: \\                  =D-/
     (_________________)
     Please give your answer only as a number from 1 to 3. Thanks!"
    end
end