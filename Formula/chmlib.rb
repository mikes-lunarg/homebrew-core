class Chmlib < Formula
  desc "Library for dealing with Microsoft ITSS/CHM files"
  homepage "http://www.jedrea.com/chmlib"
  url "http://www.jedrea.com/chmlib/chmlib-0.40.tar.gz"
  mirror "https://mirrors.kernel.org/debian/pool/main/c/chmlib/chmlib_0.40.orig.tar.gz"
  sha256 "512148ed1ca86dea051ebcf62e6debbb00edfdd9720cde28f6ed98071d3a9617"

  bottle do
    cellar :any
    revision 1
    sha1 "268c1b15456895dcf00e17826c60b115e8741dac" => :yosemite
    sha1 "9857eebe67646472c638115c014289249992b515" => :mavericks
    sha1 "e5c765036fd196e3c659b9cc21e3b024ab606f33" => :mountain_lion
  end

  def install
    system "./configure", "--disable-io64", "--enable-examples", "--prefix=#{prefix}"
    system "make", "install"
  end
end
