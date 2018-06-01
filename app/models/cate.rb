class Cate < ApplicationRecord
	has_many :posts
	validates_presence_of :name, :message => 'nhập tên category'
	validates_length_of :name, in: 5..30, :message => 'tên quá ngắn'
	validates_presence_of :description, :message => 'Nhập mô tả'
end

