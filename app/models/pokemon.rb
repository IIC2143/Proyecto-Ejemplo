class Pokemon < ApplicationRecord
    validates :name, presence: true
    validates :cp, presence: true
    validates :level, presence: true
end
