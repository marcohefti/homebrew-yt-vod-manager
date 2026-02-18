class YtVodManager < Formula
  desc "CLI app to download YouTube channels and playlists and keep them up to date locally"
  homepage "https://github.com/marcohefti/yt-vod-manager"
  version "0.1.0"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.0/yt-vod-manager_v0.1.0_darwin_arm64.tar.gz"
      sha256 "53727cdf80eb3cd5e6c33da3adfcb17a2e5c42f97480eb13565d48b2e006eff3"
    else
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.0/yt-vod-manager_v0.1.0_darwin_amd64.tar.gz"
      sha256 "236fbc3db94c37734459471a5231cc834ebb42c79f2b370a532fd858a2a051ef"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.0/yt-vod-manager_v0.1.0_linux_arm64.tar.gz"
      sha256 "65820a3de5433a30875c80368377ccc41e4c0f23524d205d50a7d2228e391d94"
    else
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.0/yt-vod-manager_v0.1.0_linux_amd64.tar.gz"
      sha256 "5fba5e39525caebd4e28ab37d16b2e4472471c03e6929c7016f5d35dc202d98a"
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
