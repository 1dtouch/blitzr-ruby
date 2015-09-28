module Blitzr
  class Client
    module Artist

      # Search for an artist
      #
      # @see http://api.blitzr.com/doc#get--artist-
      def details(query = {})
        options = { query: query }
        response = client.get('artist', options)

        Struct::Artist.new(response)
      end

      # Search for an artist biography
      #
      # @see http://api.blitzr.com/doc#get--artist-biography-
      def biography(query = {})
        options = { query: query }
        response = client.get('artist/biography', options)

        Struct::Biography.new(response['biography'])
      end

      # Search for an artist summary
      #
      # @see http://api.blitzr.com/doc#get--artist-summary-
      def summary(query = {})
        options = { query: query }
        response = client.get('artist/summary', options)

        response['summary']
      end
    end
  end
end
