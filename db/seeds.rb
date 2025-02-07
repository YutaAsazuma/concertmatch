#This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples#:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"
require 'json'
require 'httparty'
puts "deleting all old data....."
Chatroom.destroy_all
Message.destroy_all
User.destroy_all
Concert.destroy_all
Favorite.destroy_all
Forum.destroy_all
Comment.destroy_all
# #USERS:
bio_options = [
  "Passionate musician spreading good vibes through my music.",
  "Concert-goer and music enthusiast always searching for the next great show.",
  "Rocking the stage and connecting with the crowd through my music.",
  "Dedicated fan of live music and unforgettable concert experiences.",
  "Music lover on a mission to discover new sounds and rhythms.",
  "Melody-driven soul seeking the magic of live performances.",
  "Concert junkie always chasing the adrenaline of a live show.",
  "Guitarist with a passion for creating and performing original music.",
  "Harmony architect, blending different musical elements to create unique sonic landscapes.",
  "Music connoisseur, curating playlists that take listeners on unforgettable musical journeys.",
  "Drummer keeping the beat and driving the energy of the live performance.",
  "Electrifying performer igniting the stage with my musical prowess.",
  "Captivating audiences with the power of my voice and heartfelt lyrics.",
  "Groove seeker, constantly exploring the rhythmic wonders of different genres.",
  "Songwriter crafting melodies that resonate with the depths of the human experience.",
  "Unplugged troubadour, sharing intimate acoustic moments with audiences.",
  "Keyboard magician, weaving enchanting melodies that transport listeners to otherworldly realms.",
  "Vocal powerhouse, belting out soul-stirring tunes that leave audiences in awe.",
  "Bassline aficionado, providing the foundation for the band's infectious groove.",
  "Genre explorer, pushing boundaries and fusing different styles to create a fresh musical fusion.",
  "Lyric poet, crafting heartfelt words that touch the hearts and minds of listeners.",
  "Stage presence extraordinaire, commanding attention with every note and movement.",
  "Concert advocate, promoting the importance of live music for the soul and community.",
  "Multi-instrumentalist, mastering various instruments to create a symphony of sounds.",
  "Music therapist, using the power of music to heal and uplift spirits.",
  "Choir member, harmonizing with others to create a celestial vocal blend.",
  "Music producer, shaping and molding sounds to create a sonic masterpiece."]



#GENRES
genres = ["Rock", "Pop", "Hip Hop", "R&B", "Electronic", "Country", "Jazz", "Classical", "Folk", "Reggae", "Metal"]

puts "Creating Users...."

#Ahmed & Ben:
ahmed = User.new(
  email: "ahmed@gmail.com",
  password: "secret",
  first_name: "Ahmed",
  last_name: "Khogali",
  gender: 0,
  date_of_birth: Date.parse("1997-03-14"),
  bio: "I like listening to Rock, Metal, Pop and Electronic Music",
  genres: "Rock"
)
ahmed.save!
ahmed.photo.attach(io: File.open('app/assets/images/ahmed-pic.png'), filename: 'ahmed-pic.png')
ahmed.save

ben = User.new(
  email: "ben@gmail.com",
  password: "secret",
  first_name: "Ben",
  last_name: "Lee",
  gender: 0,

  date_of_birth: Date.parse("1997-01-08"),
  bio: "Concert advocate, promoting the importance of live music for the soul and community.",
  genres: "Rock"

)
ben.save!

file = URI.open("https://xsgames.co/randomusers/assets/avatars/male/47.jpg")
ben.photo.attach(io: file, filename: "#{ben.first_name}.jpg", content_type: "image/jpeg")
ben.save

#Others:
sofia = User.new(
  email: "sofia@gmail.com",
  password: "secret",
  first_name: "Sofia",
  last_name: "Neille",
  gender: 1,
  date_of_birth: Date.parse("1983-02-09"),

  bio: bio_options.sample,
  genres: genres.sample

)
sofia.save!

file = URI.open("https://xsgames.co/randomusers/assets/avatars/female/44.jpg")
sofia.photo.attach(io: file, filename: "#{sofia.first_name}.jpg", content_type: "image/jpeg")
sofia.save
karena = User.new(
  email: "karena@gmail.com",
  password: "secret",
  first_name: "Karena",
  last_name: "Radican",
  gender: 1,

  date_of_birth: Date.parse("1999-03-09"),
  bio: bio_options.sample,
  genres: genres.sample

)
karena.save!

file = URI.open("https://xsgames.co/randomusers/assets/avatars/female/55.jpg")
karena.photo.attach(io: file, filename: "#{karena.first_name}.jpg", content_type: "image/jpeg")
karena.save


yevette = User.new(
  email: "yevette@gmail.com",
  password: "secret",
  first_name: "Yevette",
  last_name: "Horcham",
  gender: 1,
  date_of_birth: Date.parse("2004-07-10"),
  bio: bio_options.sample,
  genres: genres.sample
)
yevette.save!

file = URI.open("https://xsgames.co/randomusers/assets/avatars/female/68.jpg")
yevette.photo.attach(io: file, filename: "#{yevette.first_name}.jpg", content_type: "image/jpeg")
yevette.save


pura = User.new(
  email: "pura@gmail.com",
  password: "secret",
  first_name: "Pura",
  last_name: "Greven",
  gender: 1,

  date_of_birth: Date.parse("2003-04-02"),
  bio: bio_options.sample,
  genres: genres.sample
)
pura.save!

file = URI.open("https://xsgames.co/randomusers/assets/avatars/female/20.jpg")
pura.photo.attach(io: file, filename: "#{karena.first_name}.jpg", content_type: "image/jpeg")
pura.save
emma = User.new(
  email: "emma@gmail.com",
  password: "secret",
  first_name: "Emma",
  last_name: "Smith",
  gender: 1,

  date_of_birth: Date.parse("1991-04-04"),
  bio: bio_options.sample,
  genres: genres.sample

)
emma.save!
file = URI.open("https://xsgames.co/randomusers/assets/avatars/female/25.jpg")
emma.photo.attach(io: file, filename: "#{emma.first_name}.jpg", content_type: "image/jpeg")
emma.save
dirk = User.new(
  email: "dirk@gmail.com",
  password: "secret",
  first_name: "Dirk",
  last_name: "Buns",
  gender: 0,

  date_of_birth: Date.parse("1982-07-03"),
  bio: bio_options.sample,
  genres: genres.sample


)
dirk.save!

file = URI.open("https://xsgames.co/randomusers/assets/avatars/male/77.jpg")
dirk.photo.attach(io: file, filename: "#{dirk.first_name}.jpg", content_type: "image/jpeg")
dirk.save
max = User.new(
  email: "max@gmail.com",
  password: "secret",
  first_name: "Max",
  last_name: "Hill",
  gender: 0,
  date_of_birth: Date.parse("2002-03-03"),
  bio: bio_options.sample,
  genres: genres.sample

)
max.save!
file = URI.open("https://xsgames.co/randomusers/assets/avatars/male/77.jpg")
max.photo.attach(io: file, filename: "#{max.first_name}.jpg", content_type: "image/jpeg")
max.save
alex = User.new(
  email: "alex@gmail.com",
  password: "secret",
  first_name: "Alex",
  last_name: "Scott",
  gender: 1,

  date_of_birth: Date.parse("1977-12-07"),
  bio: bio_options.sample,
  genres: genres.sample

)
alex.save!

file = URI.open("https://xsgames.co/randomusers/assets/avatars/male/45.jpg")
alex.photo.attach(io: file, filename: "#{alex.first_name}.jpg", content_type: "image/jpeg")
alex.save
leo = User.new(
  email: "leo@gmail.com",
  password: "secret",
  first_name: "Leo",
  last_name: "Reed",
  gender: 2,
  date_of_birth: Date.parse("1975-11-13"),
  bio: bio_options.sample,
  genres: genres.sample
)
leo.save!

file = URI.open("https://xsgames.co/randomusers/assets/avatars/male/78.jpg")
leo.photo.attach(io: file, filename: "#{alex.first_name}.jpg", content_type: "image/jpeg")
leo.save




elena = User.new(
  email: "elena@gmail.com",
  password: "secret",
  first_name: "Elena",
  last_name: "Quartes",
  gender: 1,
  date_of_birth: Date.parse("1987-08-05"),
  bio: bio_options.sample,
  genres: genres.sample
)
elena.save!

file = URI.open("https://xsgames.co/randomusers/assets/avatars/female/64.jpg")
elena.photo.attach(io: file, filename: "#{elena.first_name}.jpg", content_type: "image/jpeg")
elena.save



sasha = User.new(
  email: "sasha@gmail.com",
  password: "secret",
  first_name: "Sasha",
  last_name: "Olshan",
  gender: 1,
  date_of_birth: Date.parse("1987-08-05"),
  bio: bio_options.sample,
  genres: genres.sample

)
sasha.save!

file = URI.open("https://xsgames.co/randomusers/assets/avatars/female/2.jpg")
sasha.photo.attach(io: file, filename: "#{sasha.first_name}.jpg", content_type: "image/jpeg")
sasha.save
delbert = User.new(
  email: "delbert@gmail.com",
  password: "secret",
  first_name: "Delbert",
  last_name: "Kewley",
  gender: 1,

  date_of_birth: Date.parse("1995-12-07"),
  bio: bio_options.sample,
  genres: genres.sample

)
delbert.save!
file = URI.open("https://xsgames.co/randomusers/assets/avatars/male/56.jpg")
delbert.photo.attach(io: file, filename: "#{delbert.first_name}.jpg", content_type: "image/jpeg")
delbert.save

lewana = User.new(
  email: "lawana@gmail.com",
  password: "secret",
  first_name: "Lewana",
  last_name: "Armey",
  gender: 1,
  date_of_birth: Date.parse("1996-01-02"),

  bio: bio_options.sample,
  genres: genres.sample
)
lewana.save!
file = URI.open("https://xsgames.co/randomusers/assets/avatars/female/61.jpg")
lewana.photo.attach(io: file, filename: "#{lewana.first_name}.jpg", content_type: "image/jpeg")
lewana.save

milton = User.new(
  email: "milton@gmail.com",
  password: "secret",
  first_name: "Milton",
  last_name: "Borch",
  gender: 1,
  date_of_birth: Date.parse("1996-01-02"),

  bio: bio_options.sample,
  genres: genres.sample


)
milton.save!
file = URI.open("https://xsgames.co/randomusers/assets/avatars/male/25.jpg")
milton.photo.attach(io: file, filename: "#{milton.first_name}.jpg", content_type: "image/jpeg")
milton.save
lane = User.new(
  email: "lane@gmail.com",
  password: "secret",
  first_name: "Lane",
  last_name: "Walmer",
  gender: 0,
  date_of_birth: Date.parse("1995-10-02"),
  bio: bio_options.sample,
  genres: genres.sample
)
lane.save!
file = URI.open("https://xsgames.co/randomusers/assets/avatars/female/29.jpg")
lane.photo.attach(io: file, filename: "#{lane.first_name}.jpg", content_type: "image/jpeg")
lane.save

#CONCERTS:
#custom_concerts:

#starset
concert_starset_1 = Concert.new(
  name: "Starset: Horizons Tour - Milan",
  summary: "Cinematic rock outfit Starset uses the mysteries of deep space as the launching pad for their cerebral, galactic anthems. In concert the band blasts off with blazing guitars, heavy drums, and swirling symphonic touches, lifting their soaring songs into the cosmos with razor-sharp playing and gravity-defying energy.",
  address: "Alcatraz",
  date: Time.new(2023, 7, 1, 20, 0, 0, "+00:00"), # Example: June 30, 2023, 8:00 PM UTC,
  artist: "Starset",
  genre: "Rock",
  city: "Milan",
  country: "Italy"
)
file = URI.open("https://source.unsplash.com/random/900x900/?concert%20crowd")
concert_starset_1.photo.attach(io: file, filename: "#{concert_starset_1.name}.jpg", content_type: "image/jpeg")
concert_starset_1.save!

#skillet
concert_skillet = Concert.new(
  name: "Skillet: European Tour",
  summary: "Epic, expansive and anthemic, SKILLET create the type of rock that simply explodes in a live setting.  Rather than merely a show, SKILLET put on an experience for their fans through authentic and energetic performances of their studio work, as well as existential banter with fans touching on everything from the bands faith, to frontman John Cooper’s passion for video games.",
  address: "Melkweg Max",
  date: Time.new(2023, 7, 10, 20, 0, 0, "+00:00"),
  artist: "Skillet",
  genre: "Rock",
  city: "Amsterdam",
  country: "Netherlands"
)
file = URI.open("https://source.unsplash.com/random/900x900/?concert%20crowd")
concert_skillet.photo.attach(io: file, filename: "#{concert_skillet.name}.jpg", content_type: "image/jpeg")
concert_skillet.save!

#bmth
concert_bmth = Concert.new(
  name: "Bring Me The Horizon: World Tour",
  summary: "Bring Me The Horizon is a British metal band form Sheffield, Yorkshire. They are formed in 2003 and exist out of singer Oliver Sykes, pianist Jordan Fish, guitarist Lee Malia, bass guitarist Matt Kean and drummer Matt Nicholls.",
  address: "Melkweg Max",
  date: Time.new(2023, 7, 11, 20, 0, 0, "+00:00"),
  artist: "Bring Me The Horizon",
  genre: "Metal",
  city: "Amsterdam",
  country: "Netherlands"
)
file = URI.open("https://source.unsplash.com/random/900x900/?concert%20crowd")
concert_skillet.photo.attach(io: file, filename: "#{concert_skillet.name}.jpg", content_type: "image/jpeg")
concert_skillet.save!

#Starset
concert_starset_2 = Concert.new(
  name: "Starset: Horizons Tour - Munich",
  summary: "Cinematic rock outfit Starset uses the mysteries of deep space as the launching pad for their cerebral, galactic anthems. In concert the band blasts off with blazing guitars, heavy drums, and swirling symphonic touches, lifting their soaring songs into the cosmos with razor-sharp playing and gravity-defying energy.",
  address: "Tonhalle",
  date: Time.new(2023, 7, 2, 20, 0, 0, "+00:00"),
  artist: "Starset",
  genre: "Rock",
  city: "Munich",
  country: "Germany"
)
file = URI.open("https://source.unsplash.com/random/900x900/?concert%20crowd")
concert_starset_2.photo.attach(io: file, filename: "#{concert_starset_2.name}.jpg", content_type: "image/jpeg")
concert_starset_2.save!

concert_starset_3 = Concert.new(
  name: "Starset: Horizons Tour - Warsaw",
  summary: "Cinematic rock outfit Starset uses the mysteries of deep space as the launching pad for their cerebral, galactic anthems. In concert the band blasts off with blazing guitars, heavy drums, and swirling symphonic touches, lifting their soaring songs into the cosmos with razor-sharp playing and gravity-defying energy.",
  address: "Proxima",
  date: Time.new(2023, 7, 3, 20, 0, 0, "+00:00"),
  artist: "Starset",
  genre: "Rock",
  city: "Warsaw",
  country: "Poland"
)
file = URI.open("https://source.unsplash.com/random/900x900/?concert%20crowd")
concert_starset_3.photo.attach(io: file, filename: "#{concert_starset_3.name}.jpg", content_type: "image/jpeg")
concert_starset_3.save!

concert_starset_4 = Concert.new(
  name: "Starset: Horizons Tour - Amsterdam",
  summary: "Cinematic rock outfit Starset uses the mysteries of deep space as the launching pad for their cerebral, galactic anthems. In concert the band blasts off with blazing guitars, heavy drums, and swirling symphonic touches, lifting their soaring songs into the cosmos with razor-sharp playing and gravity-defying energy.",
  address: "Melkweg Max",
  date: Time.new(2023, 7, 6, 20, 0, 0, "+00:00"),
  artist: "Starset",
  genre: "Rock",
  city: "Amsterdam",
  country: "Netherlands"
)
file = URI.open("https://source.unsplash.com/random/900x900/?concert%20crowd")
concert_starset_4.photo.attach(io: file, filename: "#{concert_starset_4.name}.jpg", content_type: "image/jpeg")
concert_starset_4.save!

concert_starset_5 = Concert.new(
  name: "Starset: Horizons Tour - Amsterdam",
  summary: "Cinematic rock outfit Starset uses the mysteries of deep space as the launching pad for their cerebral, galactic anthems. In concert the band blasts off with blazing guitars, heavy drums, and swirling symphonic touches, lifting their soaring songs into the cosmos with razor-sharp playing and gravity-defying energy.",
  address: "Melkweg Max",
  date: Time.new(2023, 7, 8, 20, 0, 0, "+00:00"),
  artist: "Starset",
  genre: "Rock",
  city: "Amsterdam",
  country: "Netherlands"
)
file = URI.open("https://source.unsplash.com/random/900x900/?concert%20crowd")
concert_starset_5.photo.attach(io: file, filename: "#{concert_starset_5.name}.jpg", content_type: "image/jpeg")
concert_starset_5.save!


#ed
concert_ed = Concert.new(
  name: "Ed Sheeran's Tour Worldwide",
  summary: "It's been a quick rise for soulful British singer/songwriter Ed Sheeran. He played his first club gig in New York City in early 2012, and by the summer of 2013 tickets for his first headlining concert at New York's Madison Garden sold out in just three minutes. Sheeran's take on acoustic-based folk is updated with hip hop influenced hooks and beats.",
  address: "Melkweg Max",
  date: Time.new(2023, 7, 15, 20, 0, 0, "+00:00"),
  artist: "Ed Sheeran",
  genre: "Pop",
  city: "Amsterdam",
  country: "Netherlands"
)
file = URI.open("https://source.unsplash.com/random/900x900/?concert%20crowd")
concert_ed.photo.attach(io: file, filename: "#{concert_ed.name}.jpg", content_type: "image/jpeg")
concert_ed.save!
#
#Ticket_Master_ones
rand_summaries = ["Join us for an extraordinary evening of live music, as some of the most talented artists from around the world come together on one stage. From soulful ballads to high-energy rock anthems, this concert promises to take you on a musical journey like no other.",
                  "Prepare to be mesmerized by the sheer talent and artistry on display at this highly anticipated concert event. With a diverse lineup of musicians spanning various genres, this is your chance to experience the magic of live performances that will leave you in awe.",
                  "Immerse yourself in a symphony of sounds as a world-renowned orchestra, accompanied by an exceptional lineup of guest soloists, takes you on an unforgettable musical adventure. From classical masterpieces to contemporary compositions, this concert is a celebration of the rich heritage of orchestral music.",
                  "Get ready to dance the night away as a fusion of infectious beats and pulsating rhythms fills the air. From Latin grooves to Afrobeat influences, this concert brings together a vibrant mix of genres, ensuring an electrifying atmosphere that will keep you on your feet from start to finish.",
                  "Step into a world of pure vocal brilliance as some of the most remarkable singers of our time showcase their talent on a single stage. With their powerful voices and incredible range, these artists will transport you to a realm of emotion and musicality that will leave you breathless.",
                  "Experience the perfect blend of smooth jazz and soulful melodies at this captivating concert. From captivating saxophone solos to enchanting piano performances, this event promises to be an intimate and soul-stirring experience that will leave you craving for more.",
                  "Prepare to be captivated by an evening of dynamic performances, where artists from various genres collide to create a fusion of sound that pushes the boundaries of music. With unexpected collaborations and electrifying improvisations, this concert guarantees a night of unforgettable musical moments.",
                  "Indulge your senses in an immersive audiovisual spectacle that combines stunning visuals with live music. From breathtaking projections to synchronized light displays, this concert is a feast for the eyes and ears, offering a multi-dimensional experience that transcends traditional live performances.",
                  "Join us for a celebration of world music, featuring an eclectic lineup of artists who bring the vibrant sounds of different cultures to the stage. From African rhythms to Asian melodies, this concert is a testament to the power of music in bridging gaps and uniting people from diverse backgrounds.",
                  "Embark on a musical journey that spans decades and genres, as this concert takes you on a nostalgic trip through the evolution of popular music. From iconic classics to modern hits, the carefully curated lineup of performers ensures an unforgettable night of sing-along moments and cherished memories.",
                  "Experience the grandeur of a symphonic spectacle, as a full orchestra and choir come together to perform awe-inspiring symphonies and choral masterpieces. With its majestic arrangements and soaring melodies, this concert promises to transport you to a realm of sonic beauty and emotional depth.",
                  "Prepare to be enchanted by the ethereal sounds of acoustic instruments, as this concert showcases the beauty and intimacy of unplugged performances. From delicate fingerpicking on acoustic guitars to the rich tones of a grand piano, this event offers a serene and heartfelt musical experience.",
                  "Join us for an evening of breathtaking virtuosity, as a lineup of prodigious instrumentalists showcase their unmatched skill and dexterity on their respective instruments. From intricate guitar solos to mind-blowing drum performances, this concert will leave you in awe of human musical potential.",
                  "Indulge in an evening of musical storytelling, as this concert presents a collection of songs that explore universal"]
puts "Fetching Concerts from TicketMaster...."
events_raw = HTTParty.get("https://app.ticketmaster.com/discovery/v2/events.json?size=30&classificationName=music&apikey=#{ENV["TICKETMASTERKEY"]}")
ams_raw =  HTTParty.get("https://app.ticketmaster.com/discovery/v2/events.json?size=30&classificationName=music&city=Amsterdam&apikey=#{ENV["TICKETMASTERKEY"]}")
data = JSON.parse(events_raw.body)
ams_data = JSON.parse(ams_raw.body)
events = data["_embedded"]["events"]
events_ams = ams_data["_embedded"]["events"]
events_ams.each do |event|
  venue = event["_embedded"]["venues"][0]
  concert_ams = Concert.new(
    name: event["name"],
    summary: event['info'] || rand_summaries.sample,
    address: "#{event["_embedded"]["venues"][0]["name"]}, #{event["_embedded"]["venues"][0]["address"]["line1"]}",
    date: event["dates"]["start"]["dateTime"],
    artist: event["_embedded"]["attractions"][0]["name"],
    genre: event["classifications"][0]["genre"]["name"],
    city: venue["city"]["name"],
    country: venue["country"]["name"]
  )
    file = URI.open("https://source.unsplash.com/random/900x900/?concert%20crowd")
    concert_ams.photo.attach(io: file, filename: "#{concert_ams.name}.jpg", content_type: "image/jpeg")
    concert_ams.save!
end
events.each do |event|
  venue = event["_embedded"]["venues"][0]
  concert = Concert.new(
    name: event["name"],
    summary: event['info'] || rand_summaries.sample,
    address: "#{event["_embedded"]["venues"][0]["name"]}, #{event["_embedded"]["venues"][0]["address"]["line1"]}",
    date: event["dates"]["start"]["dateTime"],
    artist: event["_embedded"]["attractions"][0]["name"],
    genre: event["classifications"][0]["genre"]["name"],
    city: venue["city"]["name"],
    country: venue["country"]["name"]
  )
    file = URI.open("https://source.unsplash.com/random/900x900/?concert%20crowd")
    concert.photo.attach(io: file, filename: "#{concert.name}.jpg", content_type: "image/jpeg")
    concert.save!
end
Concert.where(date: nil).destroy_all
puts "Creating Fromus and comments"
rand_posts = ["You seem like a great person to share an apartment or room with for the concert!",
  "I love your enthusiasm for finding a concert buddy. It's contagious!",
  "You're going to have an amazing time at the concert, especially with the right roommate!",
  "Your positive energy makes you the perfect roommate for a concert adventure.",
  "Finding someone as excited as you to share a place for the concert will make the experience even better!",
  "You'll create incredible memories with your concert companion in the apartment or room you find.",
  "I have a feeling you'll meet an incredible roommate who shares your love for music and adventure.",
  "The concert is going to be unforgettable, especially when you find the right person to experience it with.",
  "Your passion for music will attract someone equally passionate to be your roommate during the concert.",
  "I can imagine the fun conversations and laughter you'll share with your apartment mate.",
  "The anticipation of finding a concert buddy is just as exciting as the concert itself.",
  "Your search for a roommate is like embarking on a thrilling quest leading up to the concert day.",
  "It's inspiring to see your dedication in finding the perfect companion for this concert journey.",
  "The stories and adventures you'll have with your concert roommate will make this experience unforgettable.",
  "Your genuine desire to connect with someone for the concert shows what a kind-hearted person you are.",
  "The bond you'll form with your roommate while attending the concert will last a lifetime.",
  "I can't wait to hear about the incredible memories you'll create with your concert roommate.",
  "The joy and excitement you bring to the search for a roommate make me confident you'll find an amazing match.",
  "You're on the right track to find a like-minded concert buddy. Keep up the positive energy!",
  "The concert will be even more special with the shared experience of finding a great roommate. Good luck!"]
#
  rand_comments = [
    "Sounds like a great plan! I'm also looking for someone to share accommodation for the concert.",
    "Count me in! It would be awesome to travel together and attend the concert.",
    "I'm interested! Let's coordinate and find a place to stay for the concert.",
    "I've been searching for a concert buddy. It would be fun to share accommodation and enjoy the event together.",
    "I'm up for it! Finding a roommate for the concert would make the experience even better.",
    "I love the idea! Let's find a suitable place and make the most of our concert experience.",
    "I'm on board! Sharing accommodation and attending the concert together sounds like a great plan.",
    "I'm looking for someone to split the cost of accommodation for the concert. Let's connect!",
    "I'm excited about the prospect of sharing accommodation and attending the concert with someone. Count me in!",
    "Sounds like a great opportunity to meet new people and have a memorable concert experience.",
    "I'm interested in finding a concert buddy and splitting the expenses for accommodation. Let's discuss further!",
    "I'm searching for a roommate for the concert too. Let's team up and make it a fantastic experience.",
    "I'm open to the idea of sharing accommodation. It would be great to have company for the concert.",
    "I've been looking for someone to share the travel and accommodation arrangements for the concert. Let's connect!",
    "I'm definitely up for finding a concert buddy and sharing accommodation. Let's make it happen!",
    "Count me in! Sharing accommodation and attending the concert together would be a lot of fun.",
    "I'm interested in splitting the costs and finding a concert buddy. Let's make this concert unforgettable!",
    "I'm searching for a roommate for the concert. Let's coordinate and make arrangements together.",
    "I'm excited about the idea of sharing accommodation and enjoying the concert with a fellow fan.",
    "Finding someone to travel with and share accommodation for the concert would make it an incredible experience."
  ]

  concerts = Concert.all
  users = User.where.not(email: "ahmed@gmail.com")
  concerts.each do |concert|
    num_forums = 40
    num_forums.times do
      user = users.sample
      forum = Forum.create!(
        board: [0, 1, 2].sample,
        content: rand_posts.sample,
        user: user,
        concert: concert,
      )
      puts "Creatting comments for forums"

      num_comments = rand(3..6)
      num_comments.times do
        content = rand_comments.sample
        comment_user = users.sample

        Comment.create!(
          content: content,
          forum: forum,
          user: comment_user
        )
        end
      end
    end
  puts "Creating Favorites...."
  puts "creating ahmed and bens favorites........."

  # Favorite concerts for Ahmed
ahmed_favorite_concerts = [concert_starset_1, concert_starset_2, concert_bmth, concert_skillet, concert_ed]
ahmed_favorite_concerts.each do |concert|
  Favorite.create!(user: ahmed, concert: concert) unless ahmed.favorited?(concert)
end

# Favorite concerts for Ben
ben_favorite_concerts = [concert_starset_1, concert_starset_2, concert_starset_3, concert_starset_4, concert_starset_5, concert_bmth, concert_skillet, concert_ed]
ben_favorite_concerts.each do |concert|
  Favorite.create!(user: ben, concert: concert) unless ben.favorited?(concert)
end

    concerts.each do |concert|
      20.times do
        fav_user = users.sample
        fav_concert = Concert.all.sample



      unless fav_user.favorited?(concert)
        Favorite.create!(user: fav_user, concert: concert)
      end
    end
  end


  puts "creating chatrooms and messages for ahmed profile......"

  # Find or create the chatroom between Ahmed and Dirk
  chatroom1 = Chatroom.create!(name: "Ahmed & Dirk Chatroom", user: dirk)


  # Create messages
  message1 = Message.create!(
    content: "Hi Dirk",
    user: ahmed,
    chatroom: chatroom1
  )

  message2 = Message.create!(
    content: "Hi Ahmed",
    user: dirk,
    chatroom: chatroom1
  )


  # Find or create the chatroom between Ahmed and Emma
  chatroom2 = Chatroom.create!(name: "Ahmed & Emma Chatroom", user: emma)


  # Create messages
  message3 = Message.create!(
    content: "Hi Emma",
    user: ahmed,
    chatroom: chatroom2
  )

  message4 = Message.create!(
    content: "Hi Ahmed",
    user: emma,
    chatroom: chatroom2
  )
