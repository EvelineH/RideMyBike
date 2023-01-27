class Color < ApplicationRecord
  has_many :bikes
  include PgSearch::Model
  multisearchable against: [:name]
end
