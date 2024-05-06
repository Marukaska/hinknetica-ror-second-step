class User < ApplicationRecord
  # has_many :status_tests
  # has_many :tests, through: :status_tests
  #
  # def tests_by_level(level)
  #   tests.where(level: level)
  # end

  def tests_by_level(level)
    Test.joins("JOIN status_tests ON tests.id = status_tests.test_id").where("status_tests.user_id = ? AND tests.level = ?", id, level)
  end
end
