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
#

class Post < ApplicationRecord
  belongs_to :user
end
