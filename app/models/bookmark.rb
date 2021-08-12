class Bookmark < ApplicationRecord
  belongs_to :movie # bookmark.movie
  belongs_to :list #bookmark.list
  # belongs_to :abc # bookmark.abc

  validates :comment, length: { minimum: 6 }
  validates_uniqueness_of :movie_id, scope: :list_id
end
