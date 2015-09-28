require 'spec_helper'

describe Blitzr::Client, '.label' do
  subject { described_class.new(api_endpoint: 'http://api.blitzr', api_key: 'key').label }

  describe '#details' do 
    before do
      stub_request(:get, %r[/label]).to_return(read_fixture('label/details/success.http'))
    end

    it 'builds the correct request' do
      attributes = { slug: '1234' }
      subject.details(attributes)

      expect(WebMock).to have_requested(:get, 'http://api.blitzr/label?slug=1234&key=key&_format=json')
                          .with(query: attributes)
    end

    it 'returns the label results' do
      attributes = { slug: '1234' }
      result = subject.details(attributes)

      expect(result).to be_a(Blitzr::Struct::Label)
    end
  end

  describe '#biography' do
    before do
      stub_request(:get, %r[/label/biography]).to_return(read_fixture('label/biography/success.http'))
    end

    it 'builds the correct request' do
      attributes = { slug: '1234' }
      subject.biography(attributes)

      expect(WebMock).to have_requested(:get, 'http://api.blitzr/label/biography?slug=1234&key=key&_format=json')
                          .with(query: attributes)
    end

    it 'returns the label results' do
      attributes = { slug: '1234' }
      result = subject.biography(attributes)

      expect(result).to be_a(Blitzr::Struct::Biography)
    end
  end
end
