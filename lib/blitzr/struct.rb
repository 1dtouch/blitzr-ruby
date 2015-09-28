module Blitzr
  module Struct

    class Base
      def initialize(attributes = {})
        attributes.each do |key, value|
          m = "#{key}=".to_sym
          self.send(m, value) if self.respond_to?(m)
        end
      end
    end
  end
end

require 'blitzr/struct/biography'
require 'blitzr/struct/tag'
require 'blitzr/struct/artist'
require 'blitzr/struct/label'
