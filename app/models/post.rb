# == Schema Information
#
# Table name: posts
#
#  id         :bigint           not null, primary key
#  title      :text
#  content    :text
#  hashtag    :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Post < ApplicationRecord
  belongs_to :user, :optional=>true

  has_many :comments
  # has_many :likes?
end
