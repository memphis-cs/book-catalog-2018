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

require 'test_helper'

class AuthorTest < ActiveSupport::TestCase

  test "year born should be valid" do
    one = authors(:one)
    one.year_born = 2000
    assert one.valid?
  end

  test "year born should be too small" do
    one = authors(:one)
    one.year_born = 1900
    assert_not one.valid?
  end

end
