# == Schema Information
#
# Table name: cards
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  deadline    :datetime
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Card < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :deadline, presence: true
end
