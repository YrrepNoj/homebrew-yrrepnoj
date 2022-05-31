# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoReleaserTesting < Formula
  desc "Testing out uploading a brew forumla to a public tap"
  homepage "https://twitter.com/YrrepNoj"
  version "0.0.4"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/YrrepNoj/go-releaser-testing/releases/download/v0.0.4/go-releaser-testing_0.0.4_Darwin_x86_64"
      sha256 "4bd69c9a7bcab0fa05ea8b4c19300443f29be25e188ccbd551fba42ed0075b29"

      def install
        bin.install "go-releaser-testing_0.0.4_Darwin_x86_64" => "go-releaser-testing"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/YrrepNoj/go-releaser-testing/releases/download/v0.0.4/go-releaser-testing_0.0.4_Darwin_arm64"
      sha256 "09b6f0e728cec07f30034afd8422c7404792a43b161afb5d6a7a1e32cb651336"

      def install
        bin.install "go-releaser-testing_0.0.4_Darwin_arm64" => "go-releaser-testing"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/YrrepNoj/go-releaser-testing/releases/download/v0.0.4/go-releaser-testing_0.0.4_Linux_arm64"
      sha256 "f08c9b766b0d7dbb5d46a043e39d379f0fbb8f08f39e3a65cf5de047806b1ed1"

      def install
        bin.install "go-releaser-testing_0.0.4_Linux_arm64" => "go-releaser-testing"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/YrrepNoj/go-releaser-testing/releases/download/v0.0.4/go-releaser-testing_0.0.4_Linux_x86_64"
      sha256 "2ac34de50acb2be0cbcdfc28c2a57114c5f84637ec50661809426cb2ec53337a"

      def install
        bin.install "go-releaser-testing_0.0.4_Linux_x86_64" => "go-releaser-testing"
      end
    end
  end
end
