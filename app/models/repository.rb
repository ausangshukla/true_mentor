class Repository < ActiveRecord::Base
  TYPES = ["Free", "Freemium", "Paid"]
  has_many :ideas
  validates_presence_of :summary, :description, :tags, :repo_type
end
