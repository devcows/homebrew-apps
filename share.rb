class Share < Formula
  desc ""
  homepage ""
  url "https://github.com/devcows/share/releases/download/v0.0.1/share_0.0.1_darwin_amd64.zip"
  version "64"
  sha256 "e0ac107a5023cd7125cfa88464a856616092bdc8ab26143173b3e801ce953c95"

  def install
    bin.install "share"
  end
end
