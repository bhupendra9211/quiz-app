class Question < ApplicationRecord
  belongs_to :category
  has_many :options, dependent: :destroy
  validates :content, presence: true
  validates :correct_option, inclusion: { in: 1..4 }
end
