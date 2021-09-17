class DocumentsController < ApplicationController

  before_action :find_document, only: [:show, :edit, :update, :destroy]

  def index 
    # @documents = Document.all.order('created_at DESC')
    @documents = Document.where(user_id: current_user)
  end

  def show
  end

  def new
    # @document = Document.new
    @document = current_user.documents.build
  end


  def create
    # @document = Document.new(document_params)
    @document = current_user.documents.build(document_params)

    if @document.save
      redirect_to @document # redirect refreshes page
    else 
      render 'new' # render does not refresh page
    end
  end

  def edit 
  end

  def update
    if @document.save
      redirect_to @document # redirect refreshes page
    else 
      render 'edit' # render does not refresh page
    end
  end

  def destroy
    @document.destroy
    redirect_to documents_path
  end

  private 

  def find_document 
    @document = Document.find(params[:id])
  end

  def document_params
    params.require(:document).permit(:title, :content)
  end
end
