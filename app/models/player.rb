class Player < ApplicationRecord
    has_many :moves
    belongs_to :play

    accepts_nested_attributes_for :moves, allow_destroy: true, update_only: true, allow_destroy: true
end
