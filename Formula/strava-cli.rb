class StravaCli < Formula
  include Language::Python::Virtualenv

  desc "Strava Command-Line Tools"
  homepage "https://github.com/bwilczynski/strava-cli"
  url "https://files.pythonhosted.org/packages/d9/2b/3d510369b17917d2da4dccd821c1269f8d12d15dc7641810158027612916/strava-cli-0.4.8.tar.gz"
  sha256 "344f497232fe101d8e1506151b42d590421db2c61087e679504e593331d04d84"

  depends_on "python3"

  resource "strava-cli" do
    url "https://files.pythonhosted.org/packages/41/8b/1c91c26ebb16ac7674a60108752b2aaa440ad39dce566581285e74221443/strava-cli-0.4.9.tar.gz"
    sha256 "35d5011f9c33600c47b3d646877fe8e375596553d432c93755d25909d6714cdf"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/strava", "--version"
  end
end
