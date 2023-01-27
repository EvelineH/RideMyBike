class Category < ApplicationRecord
  has_many :bikes
  include PgSearch::Model
  multisearchable against: [:name]
end
