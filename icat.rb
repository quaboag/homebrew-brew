class Icat < Formula
  desc "Outputs an image on a color enabled terminal"
  homepage "https://github.com/atextor/icat"
  url "https://github.com/quaboag/homebrew-brew/raw/master/Archives/icat-0.5.tar.gz"
  sha256 "1d77f20c7eab29efe22aeebe426301b7dca1f898759c63f32a714c7c9ae1aab4"
  depends_on "imlib2" => :build

  def install
    system "make"
    bin.install "icat"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test icat`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
