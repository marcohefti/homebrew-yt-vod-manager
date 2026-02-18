class YtVodManager < Formula
  desc "CLI app to download YouTube channels and playlists and keep them up to date locally"
  homepage "https://github.com/marcohefti/yt-vod-manager"
  version "0.1.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.3/yt-vod-manager_v0.1.3_darwin_arm64.tar.gz"
      sha256 "15eebd9f796f964c929eea52c8dcf2a0e03498b948eb323a67e03fdaefc79b39"
    else
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.3/yt-vod-manager_v0.1.3_darwin_amd64.tar.gz"
      sha256 "15385aaa4eb786eb3099ac9dacd046da3f4ae100fb1b55b386bf796c78ec3a0c"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.3/yt-vod-manager_v0.1.3_linux_arm64.tar.gz"
      sha256 "06f4923a6fb158b916ca417c9c36cc5c3f1d33486f953862cab9c8b4fd91dc55"
    else
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.3/yt-vod-manager_v0.1.3_linux_amd64.tar.gz"
      sha256 "0b3913f5e9503f67a07d3b0e5bf18d3eda6bf7be6a4a95bc5df7750f9bcc3411"
    end
  end

  def install
    bin.install "yt-vod-manager"
    prefix.install "README.md", "LICENSE"
  end

  test do
    assert_match "yt-vod-manager", shell_output("#{bin}/yt-vod-manager --help")
  end
end
