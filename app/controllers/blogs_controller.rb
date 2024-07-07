class BlogsController < ApplicationController
  before_action :authenticate_organisation!

  def new
    @blog = Blog.new
  end
end
