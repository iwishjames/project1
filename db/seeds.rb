User.destroy_all
puts "Generating users..."
u1 = User.create :first_name => "Sona", :last_name => "Unn", :email => "sona@ga.co", :password => 'chicken', :role_type => "Student", :student_class => "SEI6", :image => "https://images.pexels.com/photos/1102341/pexels-photo-1102341.jpeg"
u2 = User.create :first_name => "Bonny", :last_name => "Mentor", :email => "mentor@ga.co", :password => 'chicken', :role_type => "Alumni", :mentor_class => "SEI33", :image => "https://www.fillmurray.com/100/100"
u3 = User.create :first_name => "Hannah", :last_name => "Staff", :email => "staff@ga.co", :password => 'chicken', :role_type => "Staff", :image => "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg"
u4 = User.create :first_name => "Shane", :last_name => "Outcomes", :email => "outcomes@ga.co", :password => 'chicken', :role_type => "Outcomes", :image => "https://images.pexels.com/photos/2379005/pexels-photo-2379005.jpeg"
u5 = User.create :first_name => "Pooch", :email => "pooch@ga.co", :password => 'chicken', :role_type => "Staff"
u6 = User.create :first_name => "Admin", :email => "admin@ga.co", :password => 'chicken', :role_type => "Staff", :image => "https://ga-core.s3.amazonaws.com/production/uploads/instructor/image/1051/thumb_joel.jpg", :admin => true
u7 = User.create :first_name => "Ludovico", :email => "ludo@ga.co", :password => 'chicken', :role_type => "Student", :student_class => "SEI33", :network_github=>"lpinzari", :network_linkedin=>"ludovico-pinzar", :network_twitter=>"LudovicoPinzari"

puts "Done!👌"

Post.destroy_all
puts "Curating posts..."
p2 = Post.create :title => 'Best $5 Coffee!!', :content => 'Here is where to find the best coffee on the cheap!!', :hashtag => 'coffee wakeup brew drip', :image => "https://images.pexels.com/photos/1251175/pexels-photo-1251175.jpeg"
p1 = Post.create :title => 'GA Checklist!', :content => 'This is my list of things you should definitely try out during your time at GA!!', :hashtag => 'things list cool'
p4 = Post.create :title => 'Pearls of wisdom for Networking', :content => 'Try these out at your next networking event', :hashtag => 'Network Peers Community Tips Outcomes'
p5 = Post.create :title => 'List of useful sites for Rails', :content => 'I found these list of articles really useful in helping me get through project 1.', :hashtag => 'Ruby Rails Help Links Project1'
p3 = Post.create :title => 'Changing Passwords', :content => "Changing your password is a premium feature. So, unless you can fork out some doe, don't forget your password! Thanks :)", :hashtag => 'password freemium premium sorry not sorry'
puts "Shared!"

puts "Associating posts to users..."
#Posts and Users
u1.posts << p5
u2.posts << p2
u3.posts << p1
u4.posts << p4
u6.posts << p3
puts "Linked In!"
