class YtVodManager < Formula
  desc "CLI app to download YouTube channels and playlists and keep them up to date locally"
  homepage "https://github.com/marcohefti/yt-vod-manager"
  version "0.1.8"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.8/yt-vod-manager_v0.1.8_darwin_arm64.tar.gz"
      sha256 "a552f51aad33c0800ca5d4a43ab9fc36b6ab2c467df75286a1c1943d3169184c"
    else
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.8/yt-vod-manager_v0.1.8_darwin_amd64.tar.gz"
      sha256 "6cf6fca7bfd1370036f9bf545a2423cc5b5bc1e708a53f2f4d4e6d48429a560a"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.8/yt-vod-manager_v0.1.8_linux_arm64.tar.gz"
      sha256 "a4b31c23b05f244df767897970ad53f18699c265203d4605745f5576a8d93c48"
    else
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.8/yt-vod-manager_v0.1.8_linux_amd64.tar.gz"
      sha256 "29b69615b08e3114a014fa67c4f72fa6a921b18425f710c8f562e865a1412ce4"
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
