class Hoist < Formula
  desc "Manage AI agent artifacts"
  homepage "https://github.com/westonkd/scaffold"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/westonkd/scaffold/releases/download/v0.1.2/hoist-v0.1.2-aarch64-apple-darwin.tar.gz"
      sha256 "eb155ff45cca8719f2062c25770e5b3e26171f36cfcc90fdc61af5e66080a191"
    else
      url "https://github.com/westonkd/scaffold/releases/download/v0.1.2/hoist-v0.1.2-x86_64-apple-darwin.tar.gz"
      sha256 "11f12c41c38dc2c69a041783625d0fe9100e03c755509e48fdfe858bcf1f6121"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/westonkd/scaffold/releases/download/v0.1.2/hoist-v0.1.2-aarch64-unknown-linux-musl.tar.gz"
      sha256 "031054e41169206fe8e85b1376e328792739494d69e962eb24f54339cee23aeb"
    else
      url "https://github.com/westonkd/scaffold/releases/download/v0.1.2/hoist-v0.1.2-x86_64-unknown-linux-musl.tar.gz"
      sha256 "04694f6671387b53f5c2185e283528a21864742541cdfc7920916eb89c56d8d8"
    end
  end

  def install
    bin.install "hoist"
  end

  test do
    assert_match "hoist", shell_output("#{bin}/hoist --help")
  end
end
