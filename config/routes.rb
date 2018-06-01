Rails.application.routes.draw do
	root to: 'view#index'
  get 'cate/new' => 'cate#new'
  post 'cate/create' => 'cate#create'
  get 'cate/list' => 'cate#list'
  get 'cate/show' => 'cate#show'
  get 'cate/edit' => 'cate#edit'
  post 'cate/update' => 'cate#update'
  get 'cate/delete' => 'cate#delete'
  get 'post/new' => 'post#new'
  get 'post/new' => 'post#new'
  post 'post/create' => 'post#create'

end
