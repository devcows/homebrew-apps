class FfmpegJoin < Formula
  VERSION_NUM = '0.0.6'
  BASE_URL = 'https://github.com/ryanfox1985/ffmpeg_join/releases/download'
  desc "FfmpegJoin is a tool to be able to join videos using ffmpeg."
  homepage "https://github.com/ryanfox1985/ffmpeg_join"
  version VERSION_NUM

  if OS.linux?
    if Hardware::CPU.is_64_bit?
      url "#{BASE_URL}/#{VERSION_NUM}/ffmpeg_join-#{VERSION_NUM}-linux-amd64.tar.gz"
      sha256 "e5004a68459b3b16b8412908fc5859d469d72b85c97ca2e76cddad2910b78217"
		else
      url "#{BASE_URL}/#{VERSION_NUM}/ffmpeg_join-#{VERSION_NUM}-linux-386.tar.gz"
      sha256 "42d1f01a0f15d9cccfaa2a32935c5829893d556745f413c94a0f71144e96abd8"
		end
  else
    url "#{BASE_URL}/#{VERSION_NUM}/ffmpeg_join-#{VERSION_NUM}-darwin-amd64.tar.gz"
    sha256 "660b06bffc017444acd217128ddf52e40a9e0cbf59352e0a2438fb01472b6d0a"
  end

  depends_on :arch => :intel

  def install
    bin.install "ffmpeg_join"
  end

  def caveats
    msg = <<-"EOF"
      _____  _____                                      __       .__        
    _/ ____\/ ____\_____ ______   ____   ____          |__| ____ |__| ____  
    \   __\\   __\/     \\____ \_/ __ \ / ___\         |  |/  _ \|  |/    \ 
     |  |   |  | |  Y Y  \  |_> >  ___// /_/  >        |  (  <_> )  |   |  \
     |__|   |__| |__|_|  /   __/ \___  >___  /_____/\__|  |\____/|__|___|  /
                       \/|__|        \/_____/_____/\______|              \/ 
EOF
  end
end
