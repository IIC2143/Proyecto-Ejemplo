# frozen_string_literal: true

# comments controller
class CommentsController < ApplicationController
  def new
    return redirect_to new_user_session_url if current_user.nil?

    @publication_id = params[:publication_id]
    @comment = Comment.new
  end

  def create
    return redirect_to new_user_session_url if current_user.nil?

    comment_params[:publication_id] = params[:publication_id].to_i
    @comment = Comment.new(comment_params)
    @comment.user = current_user

    if @comment.save
      redirect_to publication_path(@comment.publication_id)
    else
      render :new
    end
  end

  def delete
    @comment = Comment.find(params[:id])
    @id_publication = @comment.publication
    @comment.destroy
    redirect_to publications_path(@id_publication)
  end

  def comment_params
    params.require(:comment).permit(:content, :publication_id, :user_id)
  end
end
