require 'rubygems'
require 'zip'

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  #config.autoload_paths += Dir["#{config.root}/lib"]
  
  def tyson
    render text: "tyson"
    @titles = Title.all
  end
  
  def firstdb
        @titles = Title.all
    @portfolios = Portfolio.all
    filename = 'sample.zip'
    filepath = Rails.root.join('tmp', filename)
    #stat = File::stat(filepath)
    #send_file(filepath, :filename => filename, :length => stat.size)
  end 
  
  #ファイルサイズがデカイと思い
  def pazu
    #send_file Rails.root.join("tmp/ver.zip")
    filename = 'pazu.zip'
    filepath = Rails.root.join('tmp', filename)
    stat = File::stat(filepath)
    #send_file(filepath, :filename => filename, :length => stat.size)
  end 
  
  def map
    filename = 'sample.zip'
    filepath = Rails.root.join('tmp', filename)
    stat = File::stat(filepath)
    #send_file(filepath, :filename => filename, :length => stat.size)
  end 
  
  def appcontents
    @titles = Title.all
    @portfolios = Portfolio.all
  end

  def drow
    @titles = Title.all
    @portfolios = Portfolio.all
  end
end
