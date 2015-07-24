class UsersController < ApplicationController
	ALERTS_ADDRESS = "olyclimate-alerts@lists.riseup.net"
	NEWS_ADDRESS = "olyclimate-news@lists.riseup.net"
	DISCUSS_ADDRESS = "olyclimate-discuss@lists.riseup.net"

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
				UserMailer.subscribe(@user, DISCUSS_ADDRESS).deliver_now
			end
			if @user.news
				UserMailer.subscribe(@user, DISCUSS_ADDRESS).deliver_now
			end
			if @user.alerts
				UserMailer.subscribe(@user, DISCUSS_ADDRESS).deliver_now
			end
			redirect_to root_url
		else
			render 'static_pages/new'
		end
	end

	private

		def user_params
			params.require(:user).permit(:email, :alerts, :news, :discuss)
		end
	#in private still
end
