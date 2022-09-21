class Level < ApplicationRecord
    has_many :questions
    has_many :languages, through: :questions
end
