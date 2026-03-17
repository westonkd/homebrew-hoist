class Hoist < Formula
  desc "Compose multi-repo development environments and manage AI agent artifacts"
  homepage "https://github.com/westonkd/scaffold"
  version "0.1.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/westonkd/scaffold/releases/download/v0.1.4/hoist-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "582f47926002ddf5d1b7a0ae930dd4ed50acc19bf308fcfe8a0f304ee817fa0c"
    else
      url "https://github.com/westonkd/scaffold/releases/download/v0.1.4/hoist-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "a25e911e25e20bb7d6ad834d88fe774b5ca7f2779543c627bdf053130acd80fb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/westonkd/scaffold/releases/download/v0.1.4/hoist-v0.1.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a2e1e4be88876c14a3cd2be4d5517e8aa5c3f4cd0f65f8daa3c49eda6c9fa4dc"
    else
      url "https://github.com/westonkd/scaffold/releases/download/v0.1.4/hoist-v0.1.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "566df9b577005a1c524e25b8a39f810f7a0d80a5062789aefe9534706e29465e"
    end
  end

  def install
    bin.install "hoist"
  end

  test do
    assert_match "hoist", shell_output("#{bin}/hoist --help")
  end
end
