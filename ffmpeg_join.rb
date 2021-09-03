class FfmpegJoin < Formula
  VERSION_NUM = '0.0.3'
  BASE_URL = 'https://github.com/ryanfox1985/ffmpeg_join/releases/download'
  desc "FfmpegJoin is a tool to be able to join videos using ffmpeg."
  homepage "https://github.com/ryanfox1985/ffmpeg_join"
  version VERSION_NUM

  if OS.linux?
    if Hardware::CPU.is_64_bit?
      url "#{BASE_URL}/v#{VERSION_NUM}/ffmpeg_join_#{VERSION_NUM}_linux_amd64.tar.gz"
      sha256 "5693d7837e3f72ccff1acf2e2ea6f2342e50f36a07ffb10e85ac7e2d6e5507a2"
		else
      url "#{BASE_URL}/v#{VERSION_NUM}/ffmpeg_join_#{VERSION_NUM}_linux_386.tar.gz"
      sha256 "659ed4af693a38a2c582415b4f3989a950a6a1122adca553327065c8032acf77"
		end
  else
    url "#{BASE_URL}/v#{VERSION_NUM}/ffmpeg_join_#{VERSION_NUM}_darwin_amd64.tar.gz"
    sha256 "fa03cb28f9821fe35f9a512ed9f7ca9c05b9630a5e91591b5c177f23addeff9f"
  end

  depends_on :arch => :intel

  def install
    bin.install "ffmpeg_join"
		mv bin/"ffmpeg_join", bin/"ffmpeg_join"
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
