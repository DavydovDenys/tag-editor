require 'taglib'
require 'streamio-ffmpeg'

class HomesController < ApplicationController
  def home
    # @auth_wrapper = Discogs::Wrapper.new('Tag editor', user_token: 'BGZOJMVNYSyVnmZyPgiPoPENDuhXQQIczLgEROYc')
    # #binding.pry
    # @data = @auth_wrapper.search(params[:query], per_page: 10, type: :release)
    
    # binding.pry
    
    
    auth_wrapper = Discogs::Wrapper.new('Tag editor', user_token: 'BGZOJMVNYSyVnmZyPgiPoPENDuhXQQIczLgEROYc')
    search = auth_wrapper.search('ATB', per_page: 100, type: :track)
    # binding.pry
    # @image = search.results.first.cover_image
    # @picture = ''
    
    # input_file = FFMPEG::Movie.new('app/assets/music/Ego Acid.flac')
    # output_file = 'app/assets/music/Ego Acid.flac'

    
    # TagLib::FLAC::File.open("app/assets/music/Ego Acid.flac") do |file|
    #   tag = file.tag
    #   data = file.picture_list.first.data
    #   title = file.picture_list.first.description
    #   # binary_data = Base64.decode64(data)
    #   # binding.pry
    #   file = File.new('app/assets/images/Ego_Acid.jpg', 'wb')
    #   file << data
    #   file.close
      # temp_file = Tempfile.new(['image', '.jpg'], encoding: 'ascii-8bit')  # Replace .png with the actual image format
      # temp_file.binmode
      # temp_file << data
      # @picture = temp_file.path
      # temp_file.close

      #binding.pry
      # @picture = data.unpack('B*')
    # end
    #binding.pry
  end

  def search
    @auth_wrapper = Discogs::Wrapper.new('Tag editor', user_token: 'BGZOJMVNYSyVnmZyPgiPoPENDuhXQQIczLgEROYc')
    #binding.pry
    @data = @auth_wrapper.search(params[:query], per_page: 30, type: :release)
    # render json: @data
    #binding.pry
  end

  def release(id)
    @release = @auth_wrapper.get_release(id)
  end
end
