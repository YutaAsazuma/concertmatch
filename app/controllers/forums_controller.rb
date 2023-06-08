class ForumsController < ApplicationController
  def index
    @concert = Concert.find(params[:concert_id])
    @forums = @concert.forums
  end

  def show
    @forum = Forum.find(params[:id])
    @comment = Comment.new
  end
end
