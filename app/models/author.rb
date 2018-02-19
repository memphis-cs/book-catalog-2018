# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  year_born  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Author < ApplicationRecord
    has_many :books
    validates :first_name, length: { maximum: 30 }
    validates :year_born, numericality: { greater_than: 1900, less_than: 2019 }

    def full_name
        return "#{first_name} #{last_name}"
    end
end
