# class Question < ApplicationRecord
#   belongs_to :category
#   has_many :options, dependent: :destroy
#   validates :content, presence: true
#   validates :correct_option, inclusion: { in: 1..4 }
# end
class Question < ApplicationRecord
  belongs_to :category
  has_many :options, dependent: :destroy
  accepts_nested_attributes_for :options, allow_destroy: true
end

class Option < ApplicationRecord
  belongs_to :question
end
