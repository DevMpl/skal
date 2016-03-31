require_dependency "skal/application_controller"

module Skal
  class EventsController < ApplicationController
    before_action :set_event, only: [:show, :edit, :update, :destroy]

    # GET /events
    def index
      @q = Skal::Event.search(params[:q])
      @events = @q.result.page(params[:page]).per(20)
      
    end

    # GET /events/1
    def show
    end

    # GET /events/new
    def new
      @event = Event.new
    end

    # GET /events/1/edit
    def edit
    end

    # POST /events
    def create
      @event = Event.new(event_params)

      if @event.save
        redirect_to :back, notice: '新規作成が完了しました'
      else
        render :new
      end
    end

    # PATCH/PUT /events/1
    def update
      if @event.update(event_params)
        redirect_to edit_event_path(@event), notice: '更新が完了しました'
      else
        render :edit
      end
    end

    # DELETE /events/1
    def destroy
      @event.destroy
      redirect_to events_url, notice: '削除が完了しました'
    end
    
    def preview
  		@event = Skal::Event.find(params[:id])
      render "skal/preview/event.html.erb", layout: 'application'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_event
        @event = Event.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def event_params
        params.require(:event).permit(:id, :event_category_id, :title, :started_at, :ended_at, :date_note, :prefecture, :place, :fee, :capacity, :entry_note, :lecturers, :content, :contact, :organizer, :homepage, :file, :file_cache, :remove_file, :status)
      end
  end
end
