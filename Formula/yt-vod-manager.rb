class YtVodManager < Formula
  desc "CLI app to download YouTube channels and playlists and keep them up to date locally"
  homepage "https://github.com/marcohefti/yt-vod-manager"
  version "0.1.7"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.7/yt-vod-manager_v0.1.7_darwin_arm64.tar.gz"
      sha256 "d5472adcac105c8a0354879c5dac56ef7ce04fdf43534582a31b3a01a1b6ba85"
    else
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.7/yt-vod-manager_v0.1.7_darwin_amd64.tar.gz"
      sha256 "794f80fa83ea6110f6531fc433992c784397185708577cdfd0c78ee0c78aa989"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.7/yt-vod-manager_v0.1.7_linux_arm64.tar.gz"
      sha256 "4c67ea49a0eb918ac4bfaf74b722f6898b219ddcc4ef4f04ce7a3daf51f0cb2d"
    else
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.7/yt-vod-manager_v0.1.7_linux_amd64.tar.gz"
      sha256 "2ca99c055eeb50ad73b267931ab7076268206860452ee5d588cdcd18e513ee01"
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
