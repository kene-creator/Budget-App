class EntitiesController < ApplicationController
  def index
    @group = Group.find(params[:group_id])
    @entities = @group.entities.order(created_at: :desc)
  end

  def show; end
end
