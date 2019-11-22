class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo
  has_many :user_pokemons
  has_many :battles, dependent: :destroy
  has_many :pokemons, through: :user_pokemons
  validates :user_pokemons, length: { maximum: 3 }

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [:username],
    using: {
      tsearch: { prefix: true }
    }
end
