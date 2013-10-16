class DreamsController < ApplicationController
	before_action :set_dream, only: [:show, :edit, :update, :destroy]

#add 7 Methods: show, index, new, create, edit, update, destroy

# GET /dreams
	def index
		@dreams = Dream.all
	end

	# GET /dreams/1

	def show
	end 

	#GET /dreams/new
	def new
		@dream = Dream.new
	end

	# POST dreams
	def create
		@dream = Dream.new(dream_params)
		if @dream.save
			redirect_to @dream
		else
			render action: 'new'
		end
	end


	# GET /dream/1/edit
	def edit
	end

	#PATCH/PUT /dreams/1
	def update
		if @dream.update(dream_params)
			redirect_to @dream
		else
			render action: 'edit'
		end
	end

# DELETE /posts/1
def destroy
	@dream.destroy
	redirect_to dreams_url
end

private

# because never trust parameters fro the scary internet
# only allow white-list through
def dream_params
	params.require(:dream).permit(:date, :description, :feelings)
end

def set_dream
	@dream = Dream.find(params[:id])
end	

end




