class YtVodManager < Formula
  desc "CLI app to download YouTube channels and playlists and keep them up to date locally"
  homepage "https://github.com/marcohefti/yt-vod-manager"
  version "0.1.3"

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.3/yt-vod-manager_v0.1.3_darwin_arm64.tar.gz"
      sha256 "a63ed41a914b036340e93402b2c67f1acd15d3d0b4bd2058c0f5c7a302bbda33"
    else
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.3/yt-vod-manager_v0.1.3_darwin_amd64.tar.gz"
      sha256 "2b5e2abc2de435d89293b9964af703f16692f00d26c09b546018c1359099da31"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.3/yt-vod-manager_v0.1.3_linux_arm64.tar.gz"
      sha256 "37588351b42e6a4a834a3cc09f80493f744ea66a04fece230b63c40420d2d3db"
    else
      url "https://github.com/marcohefti/yt-vod-manager/releases/download/v0.1.3/yt-vod-manager_v0.1.3_linux_amd64.tar.gz"
      sha256 "efc8506dfae6f4c2871b65918bdd072c301a5130410f270a9457ac400350a2c4"
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
