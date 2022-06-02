# typed: false
# frozen_string_literal: true

class ZarfTest < Formula
  desc "An airgap delivery tool!"
  homepage "https://zarf.dev/"
  version "0.19.1"

  resource "init_package_amd" do
    url "https://github.com/defenseunicorns/zarf/releases/download/v0.19.1/zarf-init-amd64.tar.zst"
    sha256 "811fbde384b6ae4290b22cb8930cfc596a6d60050f397f9e67e8634aed5b24d3"
  end

  resource "init_package_arm" do
    url "https://github.com/defenseunicorns/zarf/releases/download/v0.19.1/zarf-init-arm64.tar.zst"
    sha256 "76d23d3caf7110133f603c2a192c662baae98c6c1d22431d86e45cadb7b6ee5d"
  end

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/defenseunicorns/zarf/releases/download/v0.19.1/zarf-mac-apple"
      sha256 "7be5973899c01068206352ecf24101567c9f845779995e1a59ae50ae331a4b3b"

      def install
        bin.install "zarf-mac-apple" => "zarf"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/defenseunicorns/zarf/releases/download/v0.19.1/zarf-mac-intel"
      sha256 "5d3fd03ef164f88f30aa9d060a9217c7bc1ce0406ff69c4286e28bd68431be1f"

      def install
        bin.install "zarf-mac-intel" => "zarf"
      end


    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/defenseunicorns/zarf/releases/download/v0.19.1/zarf"
      sha256 "205af48118fc2b25b3a2b77a851048d35d58139e340646edc8689e342f66a094"

      def install
        bin.install "zarf"
      end
    end
  end
end