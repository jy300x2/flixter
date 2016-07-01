class StaticPagesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
  end

  def privacy
  end
end
