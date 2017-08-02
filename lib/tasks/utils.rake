namespace :utils do
  desc "Criando Administradores Fake"
  task generate_admins: :environment do
    puts "Cadastrando Admin Fake..."
    
    10.times do
      Admin.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email, 
        password: "123456", 
        password_confirmation:"123456",
        role: [0,1].sample
      )
    end
    
    puts "Administradores Fake Criados"
  end





  desc "Cria Conquistas Fake"
  task generate_achievements: :environment do
    puts "Cadastrando Conquistas..."

    15.times do
      Achievement.create!(
        title: Faker::Lorem.sentence,
        description: LeroleroGenerator.sentence,
        member: Member.first,
        game: Game.all.sample
      )
    end


    puts "Conquistas cadastrados com sucesso!"
  end
end
