class Player < ApplicationRecord
    has_many :movesets
    belongs_to :play
end
