module Blitzr
  module Struct
    class Artist < Base
      attr_accessor :image, :thumb_300, :thumb, :uuid, :name, :real_name, :slug, :type, :begin_date, :location, :location_code, :has_duplicate

      def tags
        @tags ||= []
      end

      def tags=(attrs)
        @tags = attrs.map { |tag| Struct::Tag.new(tag) }
      end
    end
  end
end
