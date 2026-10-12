# typed: false
# frozen_string_literal: true

# Homebrew formula for LoongCode.
# NOTE: packages/loongcode/script/publish.ts regenerates this file on each
# release (it writes loongcode.rb at the repo root). Align that generator with
# this template when cutting the first Calendula597 release.
class Loongcode < Formula
  desc "The AI coding agent built for the terminal."
  homepage "https://github.com/Calendula597/LoongCode"
  version "0.0.66"

  depends_on "ripgrep"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/Calendula597/LoongCode/releases/download/v#{version}/loongcode-darwin-x64.zip"
      sha256 "PLACEHOLDER_DARWIN_X64_SHA256"

      def install
        bin.install "loongcode"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/Calendula597/LoongCode/releases/download/v#{version}/loongcode-darwin-arm64.zip"
      sha256 "PLACEHOLDER_DARWIN_ARM64_SHA256"

      def install
        bin.install "loongcode"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? and Hardware::CPU.is_64_bit?
      url "https://github.com/Calendula597/LoongCode/releases/download/v#{version}/loongcode-linux-x64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_X64_SHA256"
      def install
        bin.install "loongcode"
      end
    end
    if Hardware::CPU.arm? and Hardware::CPU.is_64_bit?
      url "https://github.com/Calendula597/LoongCode/releases/download/v#{version}/loongcode-linux-arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64_SHA256"
      def install
        bin.install "loongcode"
      end
    end
  end
end
