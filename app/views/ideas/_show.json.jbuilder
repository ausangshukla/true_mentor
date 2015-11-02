json.extract! idea, :id, :summary, :details, :tags, :repository_id, :idea_type, :order, :created_at, :updated_at
if params[:include_idea_components] 
	json.idea_components do	
		json.array!(idea.idea_components) do |c|
			json.partial! '/idea_components/show', idea_component: c
		end
	end
end
