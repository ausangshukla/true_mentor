json.array!(@ideas) do |idea|
  json.partial! '/ideas/show', idea: idea
  json.url idea_url(idea, format: :json)
end
