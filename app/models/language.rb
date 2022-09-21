class Language < ApplicationRecord
    has_many :questions
    has_many :levels, through: :questions
end
