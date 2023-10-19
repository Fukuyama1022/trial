class HotsController < ApplicationController
    def index
    end
  
    def new
      @hot = Hot.new
    end
  
    def show
      @hot = Hot.find_by(id: params[:id])
    end
  
    def create
      @hot = Hot.new(hot_params)
      params[:hot][:question] ? @hot.question = params[:hot][:question].join("") : false
      if @hot.save
          flash[:notice] = "診断が完了しました"
          redirect_to hot_path(@hot.id)
      else
          redirect_to :action => "new"
      end
    end
  
  private
    def hot_params
        params.require(:hot).permit(:id, question: [])
    end

end
