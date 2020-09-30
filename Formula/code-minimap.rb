# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class CodeMinimap < Formula
  desc "A high performance code minimap generator written in rust"
  homepage "https://github.com/wfxr/code-minimap"
  url "https://github.com/wfxr/code-minimap/releases/download/v0.4.1/code-minimap-v0.4.1-x86_64-apple-darwin.tar.gz"
  sha256 "37816cbcce53c0cd31bcf881cee889ab784c8c779bb9db2ebed8465bc29374f3"
  license "MIT/APACHE-2.0"
  version "0.4.1"

  def install
    bin.install "code-minimap"
    zsh_completion.install  "completions/zsh/_code-minimap"
    bash_completion.install "completions/bash/code-minimap.bash"
    fish_completion.install "completions/fish/code-minimap.fish"
  end
end

# vim: ft=ruby:
