cask "launcharr" do
  version "0.3.0"
  sha256 "bb49811ea95c11f9316f90c0603f6b5f7cb5547680b5ecb80ddd6b51cb9952e0"

  url "https://github.com/mitchmalone/launcharr/releases/download/v#{version}/launcharr-#{version}.zip"
  name "launcharr"
  desc "App launcher that dresses up as a shell prompt"
  homepage "https://launcharr.com"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "launcharr.app"

  zap trash: [
    "~/.config/launcharr",
    "~/Library/Application Support/com.mitchmalone.launcharr",
  ]
end
