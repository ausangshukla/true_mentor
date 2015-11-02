json.array!(@idea_components) do |idea_component|
  json.partial! '/idea_components/show', idea_component: idea_component
  json.url idea_component_url(idea_component, format: :json)
end
