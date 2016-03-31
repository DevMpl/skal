require_dependency "skal/application_controller"

module Skal
  class EventCategoriesController < ApplicationController
    before_action :set_event, only: [:show, :edit, :update, :destroy]

    # GET /events
    def index
      @event_categories = Skal::EventCategory.all
    end

    # GET /events/new
    def new
      @event_category = Skal::EventCategory.new
    end

    # GET /events/1/edit
    def edit
    end

    # POST /events
    def create
      @event_category = Skal::EventCategory.new(event_category_params)

      if @event_category.save
        redirect_to event_categories_path, notice: '新規作成が完了しました'
      else
        render :new
      end
    end

    # PATCH/PUT /events/1
    def update
      if @event_category.update(event_category_params)
        redirect_to edit_event_category_path(@event_category), notice: '更新が完了しました'
      else
        render :edit
      end
    end

    # DELETE /events/1
    def destroy
      @event_category.destroy
      redirect_to event_categories_path, notice: '削除が完了しました'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_event
        @event_category = Skal::EventCategory.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def event_category_params
        params.require(:event_category).permit(:id, :name, :slug, :note, :status)
      end
  end
end
