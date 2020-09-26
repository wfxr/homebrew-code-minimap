# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CodeMinimap < Formula
  desc "A high performance code minimap generator written in rust"
  homepage "https://github.com/wfxr/code-minimap"
  url "https://github.com/wfxr/code-minimap/releases/download/v0.3.0/code-minimap-v0.3.0-x86_64-apple-darwin.tar.gz"
  sha256 "7a2b7a6d68a9128d845f6eae2a1b2e9850a6ca47d05ecae5e6a6fe23013c0600"
  license "MIT/APACHE-2.0"
  version "0.3.0"

  def install
    bin.install "code-minimap"
    zsh_completion.install  "completions/zsh/_code-minimap"
    bash_completion.install "completions/bash/code-minimap.bash"
    fish_completion.install "completions/fish/code-minimap.fish"
  end
end

