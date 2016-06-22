class Share < Formula
  desc "Share is a command line for sharing files by network. The goal is to share a file easy as human-friendly as possible. It provides an independent webserver for each file."
  homepage "https://github.com/devcows/share"
  version "0.0.2"

  url "https://github.com/devcows/share/releases/download/v0.0.2/share_0.0.2_darwin_amd64.zip"
  sha1 "edf07c9a9152155cfffa1526acfd13a78df186be"

  if OS.linux?
    if Hardware.is_64_bit?
      url "https://github.com/devcows/share/releases/download/v0.0.2/share_0.0.2_linux_amd64.tar.gz"
      sha1 "a16f006aaf349278d37b2c29c697b2d9a7b06f74"
    end
  end

  depends_on :arch => :intel

  def install
    bin.install "share"
  end

  def caveats
    msg = <<-"EOF"
    ____  _
   / ___|| |__   __ _ _ __ ___
   \\___ \\| '_ \\ / _` | '__/ _ \\
    ___) | | | | (_| | | |  __/
   |____/|_| |_|\\__,_|_|  \\___|

EOF
  end
end
