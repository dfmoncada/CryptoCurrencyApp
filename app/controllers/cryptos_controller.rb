class CryptosController < ApplicationController
	

	def index
		@cryptos = Crypto.all
	end


	def show
    	@crypto = Crypto.find(params[:id])
  	end


	def new
		@crypto = Crypto.new
	end

	def edit
		@crypto = Crypto.find(params[:id])
	end


	def create
		@crypto = Crypto.new(crypto_params)

		if @crypto.save
			redirect_to @crypto
		else
			render 'new'
		end
	end


	def update
		@crypto = Crypto.find(params[:id])
	 
		if @crypto.update(crypto_params)
			redirect_to @crypto
		else
			render 'edit'
		end
	end


	def destroy
		@crypto = Crypto.find(params[:id])
		@crypto.destroy
 
		redirect_to cryptos_path
	end


	private
		def crypto_params
			params.require(:crypto).permit(:name, :short_name, :date_of_birth)
		end

end
