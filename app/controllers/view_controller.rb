class ViewController < ApplicationController
	def index
		@cates = Cate.all
	end
end
