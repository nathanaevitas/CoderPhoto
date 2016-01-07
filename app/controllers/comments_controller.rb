class CommentsController < ApplicationController
  def index
  end

  def new
  end

  def create
  	@photo = Photo.find params[:photo_id]
  	@comment = @photo.comments.build(comment_params)
  	@comment.user = current_user
  	respond_to do |format|
	  	if @comment.save
	  		format.html {
	  			flash[:success] = 'thanks for your comment!'
	  		}
	  		format.js 
  		else 
	  		format.html {
	  			flash[:notice] = 'You need to input coment content!'
	  		} 	
	  		format.js
	  	end
	  end
  end

  private

	  def comment_params
	  	params.require(:comment).permit(:content)
	  end

end
