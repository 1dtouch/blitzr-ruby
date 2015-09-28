module Blitzr
  class Client
    module Label

      # Search for a label
      #
      # @see http://api.blitzr.com/doc#get--label-
      def details(query = {})
        options = { query: query }
        response = client.get('label', options)

        Struct::Label.new(response)
      end

      # Search for a label biography
      #
      # @see http://api.blitzr.com/doc#get--label-biography-
      def biography(query = {})
        options = { query: query }
        response = client.get('label/biography', options)

        Struct::Biography.new(response['biography'])
      end
    end
  end
end
