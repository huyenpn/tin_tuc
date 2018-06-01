class CateController < ApplicationController
  layout 'admin'
  def new

  end
  def cate_param
    params.require(:cate).permit(:name, :slug, :description)
  end
  def create
    @cate = Cate.new(cate_param)
    @cate.slug = @cate.name.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
    if @cate.save
      flash[:notice] = 'Successfully'
      redirect_to :action => 'list'
    else
      flash[:errors] = @cate.errors.full_messages
      render :action => 'new'
    end
  end
  def show
    @cate = Cate.find(params[:id])
  end
  def update
    @cate = Cate.find(params[:id])
    if @cate.update_attributes(cate_param)
      redirect_to :action => 'show', :id => @cate
      flash[:notice] = 'Successfully'
    else
      flash[:errors] = @cate.errors.full_messages
      render :action => 'edit'
    end
  end
  def edit
    @cate = Cate.find(params[:id])
  end
  def list
    @cates = Cate.all
  end
  def delete
    Cate.find(params[:id]).destroy
    flash[:notice] = 'Xóa thành công'
    redirect_to :action => 'list'
  end
end
