class TodosController < ApplicationController
  respond_to :json

  def index
    respond_with Todo.all
  end

  def create
    respond_with Todo.create(params[:todo])
  end

  def update
    respond_with Todo.update(params[:id], params[:todo])
  end
end
