require "base64"
require "zlib"

require "zlib_base64_urlsafe/version"

module ZlibBase64Urlsafe
  module_function

  def encode(string)
    Base64.urlsafe_encode64 Zlib.deflate(string, Zlib::BEST_COMPRESSION)
  end

  def decode(string)
    Zlib.inflate Base64.urlsafe_decode64(string)
  end
end
