module Blitzr
  class Client

    def artist
      @services[:artist] ||= Client::ArtistService.new(self)
    end

    def label
      @services[:label] ||= Client::LabelService.new(self)
    end

    class ClientService < ::Struct.new(:client)
    end

    require 'blitzr/client/artist'
    require 'blitzr/client/label'

    class ArtistService < ClientService
      include Client::Artist
    end

    class LabelService < ClientService
      include Client::Label
    end
  end
end
