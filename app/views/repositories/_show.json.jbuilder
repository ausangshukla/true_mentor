json.extract! repository, :id, :name, :summary, :tags, :description, :repo_type, :created_by, :created_at, :updated_at
if params[:include_ideas] 
	json.ideas do	
		json.array!(repository.ideas) do |idea|
			json.partial! '/ideas/show', idea: idea
		end
	end
end
