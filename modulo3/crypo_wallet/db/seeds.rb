# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

spinner = TTY::Spinner.new("[:spinner] Verificando... Cadastrando Moedas...")
spinner.auto_spin
      
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

spinner.success("(Concluído)")
