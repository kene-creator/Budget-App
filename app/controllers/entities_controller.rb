class EntitiesController < ApplicationController
  def index
    @group = Group.find(params[:group_id])
    @entities = @group.entities.order(created_at: :desc)
    @total_price = total_price(@group)
  end

  def total_price(group)
    group.entities.sum(:amount)
  end

  def new
    @entity = Entity.new(name: '')
    @group = Group.find(params[:group_id])
  end

  def create
    @group = Group.find(params[:group_id])
    @entity = @group.entities.build(entity_params)
    @entity.user = current_user

    if @entity.save
      redirect_to group_entities_path(@group), notice: "Transaction was successfully created."
    else
      render :new
    end
  end

  def show; end

  private

  def entity_params
    params.require(:entity).permit(:name, :amount)
  end
end
