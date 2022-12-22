class Copybara < Formula
  desc ""
  homepage "github.com/michaelschiff/taps"
  url "https://github.com/michaelschiff/taps/releases/download/v1/copybara_deploy.jar"
  version "v1"
  sha256 "ee4071332f07eb0819b23b86da18c34b6dbe85a5c2d772ec399ebd387649f8f7"
  license ""

  def install
    libexec.install Dir["*"]

    bin.write_jar_script libexec/"copybara_deploy.jar", "copybara"
  end

end
