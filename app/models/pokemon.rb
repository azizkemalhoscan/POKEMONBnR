class Pokemon < ApplicationRecord
  has_many :user_pokemons, dependent: :destroy
  has_many :users, through: :user_pokemons
end
