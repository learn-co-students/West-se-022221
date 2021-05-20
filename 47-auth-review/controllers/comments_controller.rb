class CommentsController < ApplicationController

	def index
	    render json: {result: "A bunch of comments"}
	end

end
