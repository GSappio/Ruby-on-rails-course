namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
        show_spinner("Apagando BD...") { %x(rails db:drop) }
        show_spinner("Criando BD...") { %x(rails db:create) }
        show_spinner("Migrando BD...") { %x(rails db:migrate) }   
        %x(rails dev:add_coins)
        %x(rails dev:add_mining_types)
    else
      puts "Você não está em ambiente de desenvolvimento."
    end
  end

      desc "Cadastrar Moedas"
      task add_coins: :environment do
      show_spinner("Cadastrando Moedas") do

    coins = [
        {
            description: "Bitcoin",
            acronym: "BTC",
            url_image: "https://static.vecteezy.com/system/resources/previews/008/505/801/original/bitcoin-logo-color-illustration-png.png"
        }, 
        {
            description: "Ethereum",
            acronym: "ETH",
            url_image: "https://img1.gratispng.com/20180428/jfq/kisspng-ethereum-bitcoin-cryptocurrency-blockchain-dash-5ae45ba1a60e29.8298861115249151056802.jpg"
        }, 
        {
            description: "Dash",
            acronym: "DASH",
            url_image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEMpN2ksQDiqRSTbsT7VcFFgSWyRiVUzyLZsCOiNg9HA&s"
        }   
      ]

        coins.each do |coin|
        sleep(2)
        Coin.find_or_create_by!(coin)
       end
      end
    end

      desc "Cadastra os tipos de Mineração"
      task add_mining_types: :environment do
        show_spinner("Cadastrando tipos de Mineração...") do
      mining_types = [
        {name: "Proof of Work", acronym: "PoW"},
        {name: "Proof of Stake", acronym: "PoS"},
        {name: "Proof of Capacity", acronym: "PoC"}
      ]

      mining_types.each do |mining_type|
          MinigType.find_or_create_by!(mining_type)
         end
       end
      end

  private
  
  def show_spinner(msg_start, msg_end = "Concluído!")
      spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
      spinner.auto_spin
      yield
      spinner.success("(#{msg_end})")
  end
end
