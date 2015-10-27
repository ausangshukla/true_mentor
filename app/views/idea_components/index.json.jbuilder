json.array!(@idea_components) do |idea_component|
  json.extract! idea_component, :id, :summary, :details, :tags, :idea_id, :idea_component_type, :order
  json.url idea_component_url(idea_component, format: :json)
end
