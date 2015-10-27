json.array!(@repositories) do |repository|
  json.extract! repository, :id, :name, :summary, :tags, :description, :repo_type, :created_by
  json.url repository_url(repository, format: :json)
end
