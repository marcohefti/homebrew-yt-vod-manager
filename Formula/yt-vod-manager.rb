class YtVodManager < Formula
  desc "CLI app to download YouTube channels and playlists and keep them up to date locally"
  homepage "https://github.com/marcohefti/yt-vod-manager"
  version "0.1.5"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.5/yt-vod-manager_v0.1.5_darwin_arm64.tar.gz"
      sha256 "07f2ea0f788178d8f0e13dc76d1202f55e97530217c1689b7662ca1fd4b42fb9"
    else
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.5/yt-vod-manager_v0.1.5_darwin_amd64.tar.gz"
      sha256 "64d12af0518648f1f3732b0ef58c5288d43466ef50c226c0241c2c78efde8e39"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.5/yt-vod-manager_v0.1.5_linux_arm64.tar.gz"
      sha256 "3667552ad980ec514e065643039aa74d02a4b0071ff6142c1cc041058fa414e0"
    else
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.5/yt-vod-manager_v0.1.5_linux_amd64.tar.gz"
      sha256 "a2b2632f902e643bbf832fbaee8afcd2cac5a2758b10deebd5e613e4df60c2cc"
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
