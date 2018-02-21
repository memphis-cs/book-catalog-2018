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

require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
