class LeadersController < ApplicationController
  def index
    @leaders = Leader.all
  end

  def new
    @leader = Leader.new
  end

  def show
    @leader = Leader.find(params[:id])
  end

  def edit
    @leader = Leader.find(params[:id])
  end

  def create
    @leader = Leader.new(leader_params)

    if @leader.save
     redirect_to @leader
   else
     render 'new'
   end
  end

  def update
    @leader = Leader.find(params[:id])

    if @leader.update(leader_params)
      redirect_to @leader
    else
      render 'edit'
    end
  end

  def destroy
    @leader = Leader.find(params[:id])
    @leader.destroy

    redirect_to leaders_path
  end

private
  def leader_params
    params.require(:leader).permit(:name , :employee_ids => [])
  end

end
