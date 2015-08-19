class UsersController < ApplicationController
	LIST_PREFIX = { alerts: "olyclimte-alerts", news: "olyclimate-news", discuss: "olyclimate-discuss" }
	ADDRESS = "@riseup.net"

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
				UserMailer.subscribe(@user, LIST_PREFIX[:discuss]+"-subscribe"+ADDRESS).deliver
			end
			if @user.news
				UserMailer.subscribe(@user,  LIST_PREFIX[:news]+"-subscribe"+ADDRESS).deliver
			end
			if @user.alerts
				UserMailer.subscribe(@user, LIST_PREFIX[:alerts]+"-subscribe"+ADDRESS).deliver
			end
			redirect_to root_url
		else
			render 'static_pages/error'
		end
	end
	def delete
		@user = User.new
	end
	def destroy
		if user.find_by email: unsub_params.email
			if @user.destroy
				if @user.discuss 
					UserMailer.usubscribe(@user, LIST_PREFIX[:discuss]+"-unsubcribe"+ADDRESS).deliver
				end
				if @user.news
					UserMailer.usubscribe(@user, LIST_PREFIX[:discuss]+"-unsubcribe"+ADDRESS).deliver
				end
				if @user.alerts
					UserMailer.subscribe(@user, LIST_PREFIX[:discuss]+"-unsubcribe"+ADDRESS).deliver
				end
			end
		else
			render 'static_pages/error'
		end
	end

	private

		def user_params
			params.require(:user).permit(:email, :alerts, :news, :discuss)
		end
		def unsub_params
			params.require(:user).permit(:email)
		end
	#in private still
end
