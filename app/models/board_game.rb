class BoardGame < ApplicationRecord
end

class BoardGame < ApplicationRecord
    validates :title, presence: true, uniqueness: true
    validates :category, :publisher, :description, presence: true
    validates :min_players, :max_players, numericality: { greater_than: 0, only_integer: true }
  end