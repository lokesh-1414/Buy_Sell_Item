# frozen_string_literal: true

# This is a sample class representing an Notification Channel.
class NotificationsChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "notifications_#{current_user.id}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end