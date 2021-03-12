# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CodeMinimap < Formula
  desc "A high performance code minimap generator written in rust"
  homepage "https://github.com/wfxr/code-minimap"
  url "https://github.com/wfxr/code-minimap/releases/download/v0.5.0/code-minimap-v0.5.0-x86_64-apple-darwin.tar.gz"
  sha256 "41bbfa10b52cdad0bf0e16a64a11399f084f8d44d026805204563f2c10df622f"
  license "MIT/APACHE-2.0"
  version "0.5.0"

  def install
    bin.install "code-minimap"
    zsh_completion.install  "completions/zsh/_code-minimap"
    bash_completion.install "completions/bash/code-minimap.bash"
    fish_completion.install "completions/fish/code-minimap.fish"
  end
end

# vim: ft=ruby:
