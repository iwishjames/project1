# == Schema Information
#
# Table name: comments
#
#  id         :bigint           not null, primary key
#  reply      :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Comment < ApplicationRecord
  belongs_to :post
end
