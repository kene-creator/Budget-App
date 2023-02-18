class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    @group.user = current_user
    # @group.icon_data = params[:group][:icon_data]

    if @group.save
      redirect_to groups_path, notice: 'Group was successfully created.'
    else
      render :new
    end
  end

  def show; end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
