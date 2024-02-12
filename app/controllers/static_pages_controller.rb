class StaticPagesController < ApplicationController
  def index
    require 'flickr'
    flickr = Flickr.new(api_key, shared_secret)
    # This does not throw an error when I give it the values correctly,
    # however I have not been able to get Figaro working correctly.
    if params[:id]
      flickr.people.getPublicPhotos(user_id: :id)
    end
  end

  private

  # Just coding it like this until I can get environment variables working in Figaro
  def api_key
    'censored_for_this_commit'
  end

  def shared_secret
    'censored_for_this_commit'
  end
end
