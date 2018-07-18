class NewspostsController < ApplicationController
	#don't repeat yourself
	before_action :find_post, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, :except => [:index, :show]

	def index
		#sort by created at order descending
		@newsposts = Newspost.all.order("created_at DESC")
	end

	def show
	end

	def new
		@newspost = current_user.newsposts.build
	end

	def create
		@newspost = current_user.newsposts.build(newspost_params)

		if @newspost.save
			redirect_to @newspost
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @newspost.update(newspost_params)
			redirect_to @newspost
		else
			render 'edit'
		end
	end

	def destroy
		@newspost.destroy
		redirect_to root_path
	end


	private

	def find_post
			@newspost = Newspost.find(params[:id])
	end

	def newspost_params
		params.require(:newspost).permit(:title, :text, :picture, :author, :viewcount, :image)
	end
end
