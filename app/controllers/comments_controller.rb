# frozen_string_literal: true

# Controller for comments
class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)

    if @comment.save
      redirect_to post_path(@post)
    else
      redirect_to post_path(@post), flash: { error: @comment.errors.full_messages }
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy

    redirect_to post_path(@post)
  end

  private

  def comment_params
    params.require(:comment).permit(:username, :body)
  end
end
