json.array!(@repositories) do |repository|
  json.partial! '/repositories/show', repository: repository
  json.url repository_url(repository, format: :json)
end
