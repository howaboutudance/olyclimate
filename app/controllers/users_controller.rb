class UsersController < ApplicationController
	ALERTS_ADDRESS = "olyclimate-alerts-subscribe@lists.riseup.net"
	NEWS_ADDRESS = "olyclimate-news-subscribe@lists.riseup.net"
	DISCUSS_ADDRESS = "olyclimate-discuss-subscribe@lists.riseup.net"

	def show
		@user = User.find(params[:id])
	end

  def new
		@user = User.new
  end

	def create
		@user = User.new(user_params)
		if @user.save
			if @user.discuss 
				UserMailer.subscribe(@user, DISCUSS_ADDRESS).deliver
			end
			if @user.news
				UserMailer.subscribe(@user, NEWS_ADDRESS).deliver
			end
			if @user.alerts
				UserMailer.subscribe(@user, ALERTS_ADDRESS).deliver
			end
			flash[:success] = "Thanks for Signing Up"
			redirect_to root_url
		else
			render 'static_pages/error'
		end
	end

	private

		def user_params
			params.require(:user).permit(:email, :alerts, :news, :discuss)
		end
	#in private still
end
