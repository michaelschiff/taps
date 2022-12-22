class CopybaraDeploy < Formula
  desc ""
  homepage ""
  url "https://github.com/michaelschiff/taps/releases/download/v1/copybara_deploy.jar"
  version "v1"
  sha256 "ee4071332f07eb0819b23b86da18c34b6dbe85a5c2d772ec399ebd387649f8f7"
  license ""

  def install
    # Move everything under #{libexec}/
    libexec.install Dir["*"]

    # Then write executables under #{bin}/
    bin.write_jar_script libexec/"copybara_deploy.jar", "copybara"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test copybara_deploy`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
