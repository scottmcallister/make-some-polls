class GroupController < ApplicationController
  def index
    @groups = Group.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      flash[:success] = 'Group was created!'
      redirect_to groups_path
    else
      render 'new'
    end
  end

  def edit
    @group = Group.find_by_id(params[:id])
  end

  def show
    @group = Group.find_by_id(params[:id])
  end

  def update
    @group = Group.find_by_id(params[:id])
    if @group.update_attributes(group_params)
      flash[:success] = 'Group was updated!'
      redirect_to groups_path
    else
      render 'edit'
    end
  end

  def destroy
    @group = Group.find_by_id(params[:id])
    if @group.destroy
      flash[:success] = 'Group was destroyed!'
    else
      flash[:warning] = 'Error destroying group...'
    end
    redirect_to groups_path
  end

  private

  def poll_params
    params.require(:group).permit(:title)
  end

end
