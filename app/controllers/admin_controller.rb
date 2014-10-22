class AdminController < ApplicationController
	before_filter :authenticate_admin!
	def sign_out
	end
end