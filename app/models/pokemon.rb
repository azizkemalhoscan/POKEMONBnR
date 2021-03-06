class Pokemon < ApplicationRecord
  has_many :user_pokemons, dependent: :destroy
  has_many :users, through: :user_pokemons

  serialize :moves

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:name, :kind_of, :move],
    using: {
      tsearch: { prefix: true }
    }
end
