# == Schema Information
#
# Table name: users
#
#  id               :bigint           not null, primary key
#  first_name       :text
#  last_name        :text
#  email            :text
#  role             :text
#  student_class    :text
#  mentor_class     :text
#  image            :text
#  start_date       :date
#  network_github   :text
#  network_linkedin :text
#  network_twitter  :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  password_digest  :string
#  role_type        :string
#

class User < ApplicationRecord
  has_secure_password
  
  has_many :posts

end
