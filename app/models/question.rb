class Question < ApplicationRecord
  belongs_to :level
  belongs_to :language
  has_many :takes
end
