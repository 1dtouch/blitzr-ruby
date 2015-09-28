module Blitzr
  module Struct
    class Label < Base
      attr_accessor :image, :thumb_300, :thumb, :uuid, :name, :slug, :location, :location_code, :has_duplicate

      def tags
        @tags ||= []
      end

      def tags=(attrs)
        @tags = attrs.map { |tag| Struct::Tag.new(tag) }
      end
    end
  end
end
