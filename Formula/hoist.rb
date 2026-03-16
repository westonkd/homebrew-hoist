class Hoist < Formula
  desc "Compose multi-repo development environments and manage AI agent artifacts"
  homepage "https://github.com/westonkd/scaffold"
  version "0.1.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/westonkd/scaffold/releases/download/v0.1.3/hoist-v0.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "f756a03ab8722fca3553850f14aea610d113cc1505585d431045bc87ebfe79cd"
    else
      url "https://github.com/westonkd/scaffold/releases/download/v0.1.3/hoist-v0.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "257edd2305256ec729f9d89efdee5b89753ecfc56c5d7d7730829956ab75f1e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/westonkd/scaffold/releases/download/v0.1.3/hoist-v0.1.3-aarch64-unknown-linux-musl.tar.gz"
      sha256 "54e831418558cdc4f85e5b2a798654b8a64dcd7c5ca45d27953ad92da2e380f7"
    else
      url "https://github.com/westonkd/scaffold/releases/download/v0.1.3/hoist-v0.1.3-x86_64-unknown-linux-musl.tar.gz"
      sha256 "99b6fc422012795fb9309a29e1f9c79c5da7fc464d31d1f6b266430d1f048394"
    end
  end

  def install
    bin.install "hoist"
  end

  test do
    assert_match "hoist", shell_output("#{bin}/hoist --help")
  end
end
