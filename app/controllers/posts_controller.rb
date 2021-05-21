# frozen_string_literal: true

class PostsController < ApplicationController
  include PostsHelper
  before_action :authenticate_user!, only: %i[new create]
  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
    if @post.save
      redirect_to root_path
    else
      render :new
    end
  end

  def index
    @posts = Post.all
  end
end
