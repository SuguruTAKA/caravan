class BlogsController<ApplicationController
	# ユーザがログインしていないと"new"にアクセスできない
  before_action :authenticate_user!,only: :new
	def new
		@blog = Blog.new
	end
	def create
		blog = Blog.new(blog_params)
		blog.save
		redirect_to blog_path(blog.id)
		# binding.pry
	end
	def index
		@blogs = Blog.all
	end
	def show
		@blog = Blog.find(params[:id])
	end
	def edit
		@blog = Blog.find(params[:id])
	end
	def update
		blog = Blog.find(params[:id])
		blog.update(blog_params)
		redirect_to blog_path(blog.id)
	end
	def destroy
		blog = Blog.find(params[:id])
		blog.destroy
		redirect_to blogs_path
	end

	def research
	end
	def hobby
	end

	private
	  def blog_params
	  	params.require(:blog).permit(:title,:headline,:body,:category,:author_name,:image)
	  end
end
