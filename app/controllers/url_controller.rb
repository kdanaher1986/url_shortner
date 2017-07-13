class UrlController < ApplicationController
  def index
  	@url = Shorty.new
  	@urls = Shorty.all

  end

  def show
  	@url = Shorty.find_by(short_url: params[:id])
  	redirect_to @url.long_url
  end

  def create
  	@url = Shorty.new
  	@url.long_url = params[:name]
  	# @url.short_url = SecureRandom.urlsafe_base64(5)

  	@url.save
  	redirect_to root_path

  end


end
