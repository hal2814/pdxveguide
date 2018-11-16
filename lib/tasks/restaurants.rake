namespace :restaurants do
  desc "seed restaurants"
  task :seed  => [ :environment ] do
    puts "seeding restaurants..."
    50.times do
      title = Faker::Hipster.words(2).join(" ")
      web_title = title.gsub(/\s+/, "")
      Restaurant.create!(location: Faker::Address.street_address,
                         title: title,
                         hours: "9am - 5pm",
                         restaurant_type: ['vegan', 'vegetarian', 'vegan-options'].sample,
                         website: "www.#{web_title}.com",
                         online_menu: "www.#{web_title}.com/menu",
                         thumbnail: "www.#{web_title}.com/thumbnail")
    end
  end
end
