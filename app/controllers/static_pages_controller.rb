class StaticPagesController < ApplicationController
  def index
    require 'flickr'
    flickr = Flickr.new
    @url_array = []
    if params[:id]
      output = flickr.people.getPublicPhotos(user_id: params[:id])
      @url_array = output.map do |photo|
        info = flickr.photos.getInfo(:photo_id => photo["id"])
        url = Flickr.url_b(info)
      end
    end
    rescue Flickr::FailedResponse => e
      flash.now[:alert] = "Not found, please enter a valid Flickr user ID."
  end
end
