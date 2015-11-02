class IdeaComponentsController < ApplicationController
  before_action :set_idea_component, only: [:show, :edit, :update, :destroy]

  # GET /idea_components
  # GET /idea_components.json
  def index
    @idea_components = IdeaComponent.all
    @idea_components = @idea_components.where(idea_id: params[:idea_id]) if params[:idea_id].present?
  end

  # GET /idea_components/1
  # GET /idea_components/1.json
  def show
  end

  # GET /idea_components/new
  def new
    @idea_component = IdeaComponent.new
  end

  # GET /idea_components/1/edit
  def edit
  end

  # POST /idea_components
  # POST /idea_components.json
  def create
    @idea_component = IdeaComponent.new(idea_component_params)

    respond_to do |format|
      if @idea_component.save
        format.html { redirect_to @idea_component, notice: 'Idea component was successfully created.' }
        format.json { render :show, status: :created, location: @idea_component }
      else
        format.html { render :new }
        format.json { render json: @idea_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /idea_components/1
  # PATCH/PUT /idea_components/1.json
  def update
    respond_to do |format|
      if @idea_component.update(idea_component_params)
        format.html { redirect_to @idea_component, notice: 'Idea component was successfully updated.' }
        format.json { render :show, status: :ok, location: @idea_component }
      else
        format.html { render :edit }
        format.json { render json: @idea_component.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /idea_components/1
  # DELETE /idea_components/1.json
  def destroy
    @idea_component.destroy
    respond_to do |format|
      format.html { redirect_to idea_components_url, notice: 'Idea component was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_idea_component
      @idea_component = IdeaComponent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def idea_component_params
      params.require(:idea_component).permit(:summary, :details, :tags, :idea_id, :idea_component_type, :order)
    end
end
