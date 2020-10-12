# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CodeMinimap < Formula
  desc "A high performance code minimap generator written in rust"
  homepage "https://github.com/wfxr/code-minimap"
  url "https://github.com/wfxr/code-minimap/releases/download/v0.4.2/code-minimap-v0.4.2-x86_64-apple-darwin.tar.gz"
  sha256 "2a85ed99f5855439f3e6dee25d01f0de03be8e6332773e4ac402105b2a7298b8"
  license "MIT/APACHE-2.0"
  version "0.4.2"

  def install
    bin.install "code-minimap"
    zsh_completion.install  "completions/zsh/_code-minimap"
    bash_completion.install "completions/bash/code-minimap.bash"
    fish_completion.install "completions/fish/code-minimap.fish"
  end
end

# vim: ft=ruby:
