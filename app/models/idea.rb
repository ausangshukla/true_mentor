class Idea < ActiveRecord::Base
  belongs_to :repository
  has_many :idea_components
  validates_presence_of :summary, :details, :repository_id
end
