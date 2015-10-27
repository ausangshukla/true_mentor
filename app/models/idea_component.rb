class IdeaComponent < ActiveRecord::Base
  TYPES = ["Fact", "Research Findings", "Principle", "Quote"]
  belongs_to :idea
  validates_presence_of :summary, :details, :idea_id, :idea_component_type
end
