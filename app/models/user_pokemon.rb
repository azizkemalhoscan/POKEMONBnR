class UserPokemon < ApplicationRecord
  belongs_to :user
  belongs_to :pokemon
  validates_associated :user
end
