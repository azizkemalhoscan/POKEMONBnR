class Pokemon < ApplicationRecord
  belongs_to :user
  has_many :user_pokemons

end
