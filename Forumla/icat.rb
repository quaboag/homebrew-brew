# Documentation: https://docs.brew.sh/Formula-Cookbook
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Icat < Formula
  desc "Outputs an image on a 256-color or 24-bit color enabled terminal with UTF-8 locale, such as gnome-terminal, konsole or rxvt-unicode (urxvt)."
  homepage "https://github.com/atextor/icat"
  url "https://github.com/quaboag/homebrew-brew/blob/master/Archives/icat-0.5.tar.gz"
  version "0.5"
  sha256 "1d77f20c7eab29efe22aeebe426301b7dca1f898759c63f32a714c7c9ae1aab4"
  # depends_on "cmake" => :build
  depends_on "imlib2" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # system "./configure", "--disable-debug",
    #                       "--disable-dependency-tracking",
    #                       "--disable-silent-rules",
    #                       "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    # system "make", "install" # if this fails, try separate make/make install steps
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
