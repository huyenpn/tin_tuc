class PostController < ApplicationController
  layout 'admin'
  def new
    @cates = Cate.all
  end
  def create

  end
end
