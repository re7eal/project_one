class Api::StatusesController < Api::BaseController
  def index
    respond_with :api, Status.all
  end
 
  def show
    respond_with :api, Status.find(params[:id])
  end
 
  def create
    respond_with :api, Status.create(params[:status])
  end
 
  def update
    respond_with :api, Status.update(params[:id], params[:status])
  end
 
  def destroy
    respond_with :api, Status.destroy(params[:id])
  end
end
