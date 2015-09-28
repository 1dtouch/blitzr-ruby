require 'spec_helper'

describe Blitzr::Client, '.artist' do
  subject { described_class.new(api_endpoint: 'http://api.blitzr', api_key: 'key').artist }

  describe '#details' do 
    before do
      stub_request(:get, %r[/artist]).to_return(read_fixture('artist/details/success.http'))
    end

    it 'builds the correct request' do
      attributes = { slug: '1234' }
      subject.details(attributes)

      expect(WebMock).to have_requested(:get, 'http://api.blitzr/artist?slug=1234&key=key&_format=json')
                          .with(query: attributes)
    end

    it 'returns the artist results' do
      attributes = { slug: '1234' }
      result = subject.details(attributes)

      expect(result).to be_a(Blitzr::Struct::Artist)
    end
  end

  describe '#biography' do
    before do
      stub_request(:get, %r[/artist/biography]).to_return(read_fixture('artist/biography/success.http'))
    end

    it 'builds the correct request' do
      attributes = { slug: '1234' }
      subject.biography(attributes)

      expect(WebMock).to have_requested(:get, 'http://api.blitzr/artist/biography?slug=1234&key=key&_format=json')
                          .with(query: attributes)
    end

    it 'returns the artist results' do
      attributes = { slug: '1234' }
      result = subject.biography(attributes)

      expect(result).to be_a(Blitzr::Struct::Biography)
    end
  end

  describe '#summary' do
    before do
      stub_request(:get, %r[/artist/summary]).to_return(read_fixture('artist/summary/success.http'))
    end

    it 'builds the correct request' do
      attributes = { slug: '1234' }
      subject.summary(attributes)

      expect(WebMock).to have_requested(:get, 'http://api.blitzr/artist/summary?slug=1234&key=key&_format=json')
                          .with(query: attributes)
    end

    it 'returns the artist results' do
      attributes = { slug: '1234' }
      result = subject.summary(attributes)

      expect(result).to be_a(String)
    end
  end
end
