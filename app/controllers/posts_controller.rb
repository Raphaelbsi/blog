class PostsController < ApplicationController
  before_action :authenticate, only: %i[create update destroy]
end
