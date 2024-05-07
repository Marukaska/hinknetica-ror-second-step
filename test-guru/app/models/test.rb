class Test < ApplicationRecord
  has_many :questions
  has_many :status_tests
  has_many :users, through: :status_tests
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :category
  def self.sorted_titles_by_category(category_name)
    joins(:category).where(categories: { title: category_name }).order(title: :desc).pluck(:title)
  end
end
