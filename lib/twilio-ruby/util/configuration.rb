# frozen_string_literal: true

module Twilio
  module Util
    class Configuration
      attr_accessor :account_sid, :auth_token, :http_client, :region, :edge, :logger, :whitelisted_numbers, :whitelisted_environments, :environment

      def account_sid=(value)
        @account_sid = value
      end

      def auth_token=(value)
        @auth_token = value
      end

      def http_client=(value)
        @http_client = value
      end

      def region=(value)
        @region = value
      end

      def edge=(value)
        @edge = value
      end

      def logger=(value)
        @logger = value
      end

      def whitelisted_numbers=(value)
        @whitelisted_numbers = value
      end

      def whitelisted_environments=(value)
        @whitelisted_environments = value
      end

      def environment=(value)
        @environment = value
      end
    end
  end
end
