class Project < ApplicationRecord
  validates :title, presence: true
  validates :live_version, presence: true
  validates :github_version, presence: true
  belongs_to :user
  has_one_attached :thumbnail
  has_rich_text :text
end
