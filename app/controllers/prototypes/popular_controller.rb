class PopularController < ApplicationController

  def index
    @prototypes = Prototype.order("likes_count DESC").includes(:user)
  end

end
