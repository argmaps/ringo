class SelectionsController < ApplicationController
  include SelectionsHelper
  skip_before_filter :require_login, :only => [:create_via_bookmarklet]
  skip_before_filter :verify_authenticity_token, only: [:create_via_bookmarklet, :persist_via_bookmarklet]
  before_action :set_selection, only: [:show, :destroy]

  # GET /selections
  def index
    @selections = current_user.selections.all
  end

  # GET /selections/1
  def show
  end

  def create_via_bookmarklet
    if logged_in? == false
      render_bookmarklet(:am_bookmarklet, 'authenticate_for_bookmarklet')
      return
    else
      @uri = params[:uri]
      render_bookmarklet(:am_bookmarklet, 'create_via_bookmarklet')
    end
  end

  def persist_via_bookmarklet
    adapted_params = {
      content: params[:content],
      web_page_attributes: {
        uri: params[:uri]
      }
    }
    @selection = current_user.selections.build(adapted_params)

    respond_to do |format|
      if @selection.save
        format.js { render 'persist_via_bookmarklet' }
      else
        format.js { render 'failed_to_persist_via_bookmarklet' }
      end
    end
  end

  # DELETE /selections/1
  def destroy
    @selection.destroy
    respond_to do |format|
      format.js
      format.html {
        redirect_to selections_url, notice: 'Selection was successfully destroyed.'
      }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_selection
      @selection = Selection.find(params[:id])
    end
end
