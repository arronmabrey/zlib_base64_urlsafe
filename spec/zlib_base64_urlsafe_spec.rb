require 'spec_helper'

describe ZlibBase64Urlsafe do
  it 'has a version number' do
    expect(described_class::VERSION).not_to be nil
  end

  describe ".encode" do
    let(:string_to_encode) { "Hello, World!" }
    let(:expected_encoding) { "eNrzSM3JyddRCM8vyklRBAAfngRq" }
    subject(:encode) { described_class.encode(string_to_encode) }
    specify { expect(encode).to eq expected_encoding }
  end

  describe ".decode" do
    let(:string_to_decode) { "eNrzSM3JyddRCM8vyklRBAAfngRq" }
    let(:expected_decoding) { "Hello, World!" }
    subject(:decode) { described_class.decode(string_to_decode) }
    specify { expect(decode).to eq expected_decoding }
  end

end
