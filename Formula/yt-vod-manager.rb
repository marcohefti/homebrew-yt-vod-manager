class YtVodManager < Formula
  desc "CLI app to download YouTube channels and playlists and keep them up to date locally"
  homepage "https://github.com/marcohefti/yt-vod-manager"
  version "0.1.4"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.4/yt-vod-manager_v0.1.4_darwin_arm64.tar.gz"
      sha256 "e9d4ef4386a9728fba37c42c8037e6707cceb5c3d469c2c8316d15e48e7e2bb4"
    else
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.4/yt-vod-manager_v0.1.4_darwin_amd64.tar.gz"
      sha256 "14b240e81e049c8130b235b2f2c08caab83cf1a1702b6c5a2b7d2b54278f5da4"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.4/yt-vod-manager_v0.1.4_linux_arm64.tar.gz"
      sha256 "5425dac2a4d7011eac6c6c9129049651e50d8dacf00a494570a1e6f96753e0d3"
    else
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.4/yt-vod-manager_v0.1.4_linux_amd64.tar.gz"
      sha256 "710e2b5c59b564d02eeeefd4c906499e9989335898411d6ed34e78f854d83a87"
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
