class Swiftformat < Formula
  desc "Formatting tool for reformatting Swift code"
  homepage "https://github.com/nicklockwood/SwiftFormat"
  url "https://github.com/nicklockwood/SwiftFormat/archive/0.40.14.tar.gz"
  sha256 "4cccf3580a622868b7c044dd5fba598f43e3d5ea35d6c93d3d8cc27570a90e1d"
  head "https://github.com/nicklockwood/SwiftFormat.git", :shallow => false

  bottle do
    cellar :any_skip_relocation
    sha256 "216b41d26aefdd32f278d56b91a6394cb32d06295c3338ebd982ddcbc74b6d3c" => :catalina
    sha256 "5db9699c3a6be7d2fa9713e229719fdf0fbb64254f8491860eb67bc71d8c3b01" => :mojave
    sha256 "7011a5ed4606fe67d98e855a0515eccdaf9f1b30e582f5adbfbde1cdaac48f4e" => :high_sierra
  end

  depends_on :xcode => ["10.1", :build]

  def install
    xcodebuild "-project",
        "SwiftFormat.xcodeproj",
        "-scheme", "SwiftFormat (Command Line Tool)",
        "CODE_SIGN_IDENTITY=",
        "SYMROOT=build", "OBJROOT=build"
    bin.install "build/Release/swiftformat"
  end

  test do
    (testpath/"potato.swift").write <<~EOS
      struct Potato {
        let baked: Bool
      }
    EOS
    system "#{bin}/swiftformat", "#{testpath}/potato.swift"
  end
end
