# == Schema Information
#
# Table name: publishers
#
#  id         :integer          not null, primary key
#  name       :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Publisher < ApplicationRecord
    has_many :titles, class_name: 'Book', foreign_key: 'imprint_id', inverse_of: 'imprint'
end
