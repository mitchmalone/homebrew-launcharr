cask "launcharr" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

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
