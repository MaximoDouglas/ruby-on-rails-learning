# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
spinner = TTY::Spinner.new("[:spinner] Creating seed coins...")
spinner.auto_spin

coins = [{  
            description: "Bitcoin", 
            acronym: "BTC",
            url_image: "https://pngimg.com/uploads/bitcoin/bitcoin_PNG47.png"
            },
            {
            description: "Ethereum",
            acronym: "ETH",
            url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Ethereum_logo_2014.svg/628px-Ethereum_logo_2014.svg.png"
            }, 
            {   
            description: "Dash",
            acronym: "DASH",
            url_image: "https://pngimage.net/wp-content/uploads/2018/05/dash-coin-logo-png-6.png"
        }]

coins.each do |coin|
    Coin.find_or_create_by!(
        description: coin[:description], 
        acronym: coin[:acronym],
        url_image: coin[:url_image]
    )
end

spinner.success('Done!')