# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string
#  year       :integer
#  summary    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  author_id  :integer
#  imprint_id :integer
#
# Indexes
#
#  index_books_on_author_id   (author_id)
#  index_books_on_imprint_id  (imprint_id)
#

class Book < ApplicationRecord
    belongs_to :author
    belongs_to :imprint, class_name: 'Publisher', foreign_key: 'imprint_id'
end
