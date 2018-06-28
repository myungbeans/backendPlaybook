class Moveset < ApplicationRecord
    has_many :moves
    belongs_to :player
end
