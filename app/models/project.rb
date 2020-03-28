class Project < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :live_version, presence: true
  validates :github_version, presence: true
  has_many_attached :photos
end
