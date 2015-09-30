gideon, moriyah, eliav = User.create([
  {name: 'Gideon Avraham',  email: 'gido@gmail.com', password: '12345678', password_confirmation: '12345678'},
  {name: 'Moryiah Miriam',  email: 'mo@gmail.com',  password: '12345678', password_confirmation: '12345678'},
  {name: 'Eliav Yonatan', email: 'e@gmail.com',  password: '12345678', password_confirmation: '12345678'}
])

languages = Language.create ([{name: 'Chinese'}, {name: 'English'}, {name: 'French'}, {name: 'German'}, {name: 'Italian'}, {name: 'Russian'}, {name: 'Spanish'}])

interests = Interest.create ([{name: 'Animals'},{name: "Art"}, {name: "Astrology"}, {name: "Astronomy"}, {name: "Baseball"}, {name: "Board Games"}, {name: "Board Sports"}, {name: "Boxing"}, {name: "Casual Sex"}, {name: "Cats"}, {name: "Computer Programming"}, {name: "Cooking"}, {name: "Cosplay"}, {name: "Cycling"}, {name: "Dance"}, {name: "Drama"}, {name: "Drawing and Painting"}, {name: "Drinking"}, {name: "Dogs"}, {name: "Eating"}, {name: "Fashion"}, {name: "Fishing"}, {name: "Food"}, {name: "Football"}, {name: "Gambling"}, {name: "Gaming"},{name: "Gym"},{name: "Hooping"}, {name: "Hunting"}, {name: "Internet"}, {name: "Jogging"}, {name: "Legos"}, {name: "Magic"}, {name: "Martial Arts"}, {name: "Movies"}, {name: "Music"}, {name: "Paintball"}, {name: "Photography"}, {name: "Pilates"}, {name: "Puzzles"}, {name: "Reading"}, {name: "Religion"}, {name: "Rock Climbing"}, {name: "Sailing"}, {name: "Sarcasm"}, {name: "Shooting"}, {name: "Skateboarding"}, {name: "Skiing"}, {name: "Snowboarding"}, {name: "Soccer"}, {name: "Sports (General)"}, {name: "Surfing"}, {name: "Swimming"}, {name: "Technology"}, {name: "Travel"}, {name: "Video Games"}, {name: "Writing"}, {name: "Work"}, {name: "Yoga"}])
