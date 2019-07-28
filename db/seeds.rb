User.destroy_all

puts "Creating users..."
u1 = User.create(:first_name => "Sona", :last_name => "One", :email => "sona@ga.co", :role => "Student", :student_class => "SEI 33", :image => "https://fillmurray.com/100/100")
u2 = User.create(:first_name => "Mentor", :last_name => "Doe", :email => "mentor@ga.co", :role => "Mentor", :mentor_class => "SEI 33", :image => "https://fillmurray.com/100/100")
u3 = User.create(:first_name => "Staff", :last_name => "Doe", :email => "staff@ga.co", :role => "Staff", :image => "https://fillmurray.com/100/100")
u4 = User.create(:first_name => "Outcomes", :last_name => "Doe", :email => "outcomes@ga.co", :role => "Outcomes", :image => "https://fillmurray.com/100/100")
u5 = User.create(:first_name => "Pooch", :email => "pooch@ga.co", :role => "Staff", :image => "https://fillmurray.com/100/100")
puts "Done!👌"
