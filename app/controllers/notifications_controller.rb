# frozen_string_literal: true

# This is a sample class representing an  Notification controller.
class NotificationsController < ApplicationController
  before_action :require_user_logged_in!
  include NotificationsHelper
  def interested
    item = Item.find(params[:id])
    send_notification_and_mail(item, current_user)
  end

  def count
    @count = current_user.notifications.where(read: false).count
    render json: { count: @count }
  end

  def mark_read
    Notification.where(read: false, user_id: current_user.id).update(read: true)
    # redirect_to items_path
  end
end
