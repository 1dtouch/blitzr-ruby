module Blitzr
  module Default
    API_ENDPOINT = "http://api.blitzr.com/".freeze
    USER_AGENT = "blitzr-ruby/#{VERSION}".freeze

    class << self
      def keys
        @keys ||= [:api_endpoint, :api_key, :user_agent, :requests_timeout]
      end

      def options
        Hash[keys.map { |key| [key, send(key)] }]
      end

      def api_endpoint
        ENV['SIILAR_API_ENDPOINT'] || API_ENDPOINT
      end

      def api_key
        ENV['SIILAR_API_KEY']
      end

      def requests_timeout
        ENV['SIILAR_REQUESTS_TIMEOUT'] || 10
      end

      def user_agent
        ENV['SIILAR_USER_AGENT'] || USER_AGENT
      end
    end
  end
end
