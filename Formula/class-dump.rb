class ClassDump < Formula
  version "3.5"
  sha256 "b08134f8efbfaf3bb0c6cb4fc3bd9865b95860d31ea363d9e67a990ed7215bf9"

  desc "Generate Objective-C headers from Mach-O files."
  homepage "http://stevenygard.com/projects/class-dump"
  url "http://stevenygard.com/download/class-dump-#{version}.tar.gz"
  
  skip_clean "bin/class-dump"

  def install
    bin.install 'class-dump'
  end

  test do
    assert_match /class-dump #{Regexp.escape(version)}/,
      pipe_output("#{bin}/class-dump --version", "\n")
  end
end