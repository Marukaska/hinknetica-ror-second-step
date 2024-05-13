class Test < ApplicationRecord
  has_many :questions
  has_many :status_tests
  has_many :users, through: :status_tests
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :category

  scope :easy, -> { where(level: 0..1) }
  scope :medeum, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }
  scope :by_category, -> (category_name) { joins(:category).where(categories: { title: category_name }) }

  validates :title, presence: true,
                    uniqueness: { scope: :level, message: "should be unique" }
  validates :level, numericality: { only_integer: true, greater_than: 0 }

  def self.sorted_titles_by_category(category_name)
    by_category(category_name).order(title: :desc).pluck(:title)
  end
end
