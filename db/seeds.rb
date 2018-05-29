3.times do |bio|
  About.create!(
    name: "Therapist #{bio + 1}", 
    greeting: 'Get to Know Me!', 
    about_me: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
    
    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 
    main_img: 'http://via.placeholder.com/600x400', 
    thumb_img: 'http://via.placeholder.com/350x200'
  )
end

puts "3 Biographies Created!"

1.times do 
  Program.create!(
    title: "Wellness Program",
    subtitle: 'Would you like to improve your…',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
    
    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
    price: 15
    )
end
puts "Wellness Program Created!"

1.times do
  Contact.create!(
    title: "Get in touch with Us!",
    phone_number: "(307) 347-4001",
    fax_number: "(307) 347-4001",
    email: "worlandpt@outlook.com",
    address: "120 South 17th St
              Worland, WY 82401",
    main_img: "http://via.placeholder.com/600x400"
  )
end

puts "Contact Info Created!"


11.times do |count|
  Service.create!(
    title: "Amazing Service #{count + 1}",
    subtitle: "subtitle Service",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
    
    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum",
    main_img: 'http://via.placeholder.com/600x400', 
    thumb_img: 'http://via.placeholder.com/350x200'
  )
end

puts "Services Created!"

3.times do |count|
  ServiceSection.create!(
    title: "Service #{count + 1}"
  )
end

puts "Service Categories Created!"