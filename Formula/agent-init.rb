class AgentInit < Formula
  desc "Interactive scaffolder for AI coding harness project files"
  homepage "https://github.com/Shawanga/agent-init"
  url "https://github.com/Shawanga/agent-init/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ac3d1b0333fe77ff6e198f4406e7ac9cee6b04696e8709a8e207e45feb2b5fae"
  license "Apache-2.0"

  def install
    bin.install "agent-init.sh" => "agent-init"
  end

  test do
    assert_match "agent-init 1.0.0", shell_output("#{bin}/agent-init --version")
  end
end
