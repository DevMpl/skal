require 'test_helper'

module Skal
  class EventsControllerTest < ActionController::TestCase
    setup do
      @event = skal_events(:one)
      @routes = Engine.routes
    end

    test "should get index" do
      get :index
      assert_response :success
      assert_not_nil assigns(:events)
    end

    test "should get new" do
      get :new
      assert_response :success
    end

    test "should create event" do
      assert_difference('Event.count') do
        post :create, event: { capacity: @event.capacity, contact: @event.contact, content: @event.content, date_note: @event.date_note, ended_at: @event.ended_at, entry_note: @event.entry_note, event_category_id: @event.event_category_id, fee: @event.fee, file: @event.file, homepage: @event.homepage, id: @event.id, lecturers: @event.lecturers, organizer: @event.organizer, place: @event.place, prefecture: @event.prefecture, started_at: @event.started_at, status: @event.status, title: @event.title }
      end

      assert_redirected_to event_path(assigns(:event))
    end

    test "should show event" do
      get :show, id: @event
      assert_response :success
    end

    test "should get edit" do
      get :edit, id: @event
      assert_response :success
    end

    test "should update event" do
      patch :update, id: @event, event: { capacity: @event.capacity, contact: @event.contact, content: @event.content, date_note: @event.date_note, ended_at: @event.ended_at, entry_note: @event.entry_note, event_category_id: @event.event_category_id, fee: @event.fee, file: @event.file, homepage: @event.homepage, id: @event.id, lecturers: @event.lecturers, organizer: @event.organizer, place: @event.place, prefecture: @event.prefecture, started_at: @event.started_at, status: @event.status, title: @event.title }
      assert_redirected_to event_path(assigns(:event))
    end

    test "should destroy event" do
      assert_difference('Event.count', -1) do
        delete :destroy, id: @event
      end

      assert_redirected_to events_path
    end
  end
end
