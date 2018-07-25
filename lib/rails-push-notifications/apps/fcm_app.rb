module RailsPushNotifications
  #
  # This class represents an Android FCM application.
  #
  # @author Carlos Alonso
  #
  class FCMApp < BaseApp
    self.table_name = 'rails_push_notifications_fcm_apps'

    # Requires a fcm_key
    validates :fcm_key, presence: true

    private

    # @return [RubyPushNotifications::FCM::FCMPusher] configured and
    #   ready to push
    def build_pusher
      RubyPushNotifications::FCM::FCMPusher.new fcm_key
    end

    # @return [RubyPushNotifications::FCM::FCMNotification]. The type of
    #   notifications this app manages
    def notification_type
      RubyPushNotifications::FCM::FCMNotification
    end
  end
end
