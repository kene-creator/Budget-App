# frozen_string_literal: true

class EntitiesController < ApplicationController
  def index; end

  def show; end

  def destroy
    redirect_to new_user_session_path
  end
end
