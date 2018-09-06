class Userdata
  def welcome(balance) # intitail start/ configure player names
    puts "please enter a players name"
    #get user input name
    name = gets.chomp
    user = Player.new(name)
    puts "welcome to the casino #{user.name}"
    end
end