User.destroy_all
puts "Generating users..."
u1 = User.create :first_name => "Sona", :last_name => "Unn", :email => "sona@ga.co", :password => 'chicken', :role_type => "Student", :student_class => "SEI 33", :image => "https://www.fillmurray.com/100/100"
u2 = User.create :first_name => "Mentor", :last_name => "Doe", :email => "mentor@ga.co", :password => 'chicken', :role_type => "Alumni", :mentor_class => "SEI 33", :image => "https://www.fillmurray.com/100/100"
u3 = User.create :first_name => "Staff", :last_name => "Doe", :email => "staff@ga.co", :password => 'chicken', :role_type => "Staff", :image => "https://www.fillmurray.com/100/100"
u4 = User.create :first_name => "Outcomes", :last_name => "Doe", :email => "outcomes@ga.co", :password => 'chicken', :role_type => "Outcomes", :image => "https://www.fillmurray.com/100/100"
u5 = User.create :first_name => "Pooch", :email => "pooch@ga.co", :password => 'chicken', :role_type => "Staff", :image => "https://www.fillmurray.com/100/100"
u6 = User.create :first_name => "Admin", :email => "admin@ga.co", :password => 'chicken', :role_type => "Student", :student_class => "SEI 0", :image => "https://www.fillmurray.com/100/100", :admin => true
u7 = User.create :first_name => "Ludo", :email => "ludo@ga.co", :password => 'chicken', :role_type => "Student", :student_class => "SEI33", :network_github=>"lpinzari", :network_linkedin=>"ludovico-pinzar", :network_twitter=>"LudovicoPinzari"

puts "Done!👌"

Post.destroy_all
puts "Curating posts..."
p1 = Post.create :title => 'Best $5 Coffee!!', :content => 'Here is where to find the best coffee', :hashtag => 'coffee, wakeup, brew, drip', :image => "https://images.pexels.com/photos/1251175/pexels-photo-1251175.jpeg"
p2 = Post.create :title => 'Check this out!', :content => 'This is my list of things', :hashtag => 'things, list, cool'
p3 = Post.create :title => 'Pearls of wisdom from SEI3', :content => 'In hindsight this would have been good to know.', :hashtag => 'tips, advice, wisdom, SEI3'
p4 = Post.create :title => 'TESTING@/\$', :content => 'Testy Mctest Test Face', :hashtag => 'testing, test, please, work'
puts "Shared!"

puts "Associations..."
#Posts and Users
u1.posts << p1 << p3
u2.posts << p2 << p4
puts "Linked In!"
