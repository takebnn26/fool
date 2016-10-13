class Prototypes::PopularController < ApplicationController

  def index
    @prototypes = Prototype.order("likes_count DESC").includes(:user).page(params[:page]).per(2)
  end

end
