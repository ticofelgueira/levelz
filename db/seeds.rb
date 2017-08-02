# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  puts "Cadastrando JOGOS..."
  
    games = [ "Uncharted 4: A Thief's End" , 
              "FIFA 16" , 
              "FIFA 17" , 
              "The Witcher III" , 
              "Halo" , 
              "God of War III" , 
              "Battlefield 1" ,
              "Minecraft",
              "Batman Arkham Asylum" ,
              "Street Fighter V"]
              
    games.each do |game|
      Game.find_or_create_by(description: game)
    end
    
    puts "JOGOS cadastrados..."
    
    ##############################################################
    
    puts "Cadastrando ADMIN..."
      
      Admin.create!(
        name: "Tico Felgueira", 
        email: "admin@admin.com", 
        password: "123456", 
        password_confirmation: "123456",
        role: 0
)
    
    puts "ADMIN cadastrado..."
    
