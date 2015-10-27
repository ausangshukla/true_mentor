json.array!(@ideas) do |idea|
  json.extract! idea, :id, :summary, :details, :tags, :repository_id, :idea_type, :order
  json.url idea_url(idea, format: :json)
end
