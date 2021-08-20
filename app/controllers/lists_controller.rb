class ListsController < ApplicationController
    def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
    @bookmarks = @list.bookmarks
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list
    else
      render :new
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
#   before_action :set_list, only: [:show, :edit, :update, :destroy]
#   def index
#     @lists = List.all
#   end

#   def new
#     @list = List.new
#   end

#   def show
#     @list = List.find(params[:id])
#   end

#   def create
#     @list = List.new(list_params)

#     if @list.save
#       redirect_to lists_path(@list), notice: 'list was successfully created.'
#     else
#       render :new
#     end
#   end

#   # def edit
#   # end

#   # def update
#   #   if @list.update(list_params)
#   #     redirect_to @list, notice: 'List was successfully updated.'
#   #   else
#   #     render :edit
#   #   end
#   # end

#   # def destroy
#   #   @list.destroy
#   #   redirect_to lists_url, notice: 'List was successfully destroyed.'
#   # end

#   private

#   # Use callbacks to share common setup or constraints between actions.
#   def set_list
#     @list = List.find(params[:id])
#   end

#   # Only allow a list of trusted parameters through.
#   def list_params
#     params.require(:list).permit(:name)
#   end
# end
