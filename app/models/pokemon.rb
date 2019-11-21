class Pokemon < ApplicationRecord
  has_many :user_pokemons, dependent: :destroy
  has_many :users, through: :user_pokemons

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:name, :kind_of],
    using: {
      tsearch: { prefix: true }
    }
end
