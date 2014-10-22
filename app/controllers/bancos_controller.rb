class BancoController < ApplicationController
	def index
		@bancos = Banco.All
	end
end 