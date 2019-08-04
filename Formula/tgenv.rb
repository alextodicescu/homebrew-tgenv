class Tgenv < Formula
  desc "Terragrunt version manager inspired by tfenv"
  homepage "https://github.com/atodicescu/tgenv"
  url "https://github.com/alextodicescu/tgenv/archive/v0.0.8.tar.gz"
  sha256 "fd129857f55eaf4c3eb89b760668ab10f06ae3bc11c1d832490ef86a4a5cc3f2"
  head "https://github.com/atodicescu/tgenv.git"

  bottle :unneeded

  conflicts_with "terragrunt", :because => "tgenv symlinks terragrunt binaries"

  def install
    prefix.install ["bin", "libexec"]
  end

  test do
    system bin/"tgenv", "list-remote"
  end
end
