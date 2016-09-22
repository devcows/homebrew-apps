class Share < Formula
  VERSION_NUM = '0.0.3'
  desc "Share is a command line for sharing files by network. The goal is to share a file easy as human-friendly as possible. It provides an independent webserver for each file."
  homepage "https://github.com/devcows/share"
  version VERSION_NUM

  if OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/devcows/share/releases/download/v#{VERSION_NUM}/share_#{VERSION_NUM}_linux_amd64.tar.gz"
      sha256 "1cc0dae4e6705760f44a3cdaf86d606cd37b3cbc6a68bd4cd45c72da68ebd21f"
		else
      url "https://github.com/devcows/share/releases/download/v#{VERSION_NUM}/share_#{VERSION_NUM}_linux_386.tar.gz"
      sha256 "351b3d4b18ceec1e46a02e8dfae2123af6989ddc6d7ce50f9462c72d6373ba3c"
		end
  else
    if Hardware::CPU.is_64_bit?
      url "https://github.com/devcows/share/releases/download/v#{VERSION_NUM}/share_#{VERSION_NUM}_darwin_amd64.zip"
      sha256 "c1bcf62966e914f5bf3e218a009af3d69db45a8cc01e23f49cf84316cb207700"
		else
      url "https://github.com/devcows/share/releases/download/v#{VERSION_NUM}/share_#{VERSION_NUM}_darwin_386.zip"
      sha256 "365cee6ef80342210ae8894f0d479da61119e5936cbbe99603d9247c86559113"
		end
  end

  depends_on :arch => :intel

  def install
    bin.install "share"
		mv bin/"share", bin/"share-cli"
  end

  def caveats
    msg = <<-"EOF"
    ____  _
   / ___|| |__   __ _ _ __ ___
   \\___ \\| '_ \\ / _` | '__/ _ \\
    ___) | | | | (_| | | |  __/
   |____/|_| |_|\\__,_|_|  \\___|w

EOF
  end
end
