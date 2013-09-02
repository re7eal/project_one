class Api::CommentsController < Api::BaseController
  def index
    respond_with :api, Comment.all
  end
 
  def show
    respond_with :api, Comment.find(params[:id])
  end
 
  def create
    respond_with :api, Comment.create(params[:comment])
  end
 
  def update
    respond_with :api, Comment.update(params[:id], params[:comment])
  end
 
  def destroy
    respond_with :api, Comment.destroy(params[:id])
  end
end
