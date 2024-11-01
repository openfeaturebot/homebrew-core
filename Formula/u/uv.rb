class Uv < Formula
  desc "Extremely fast Python package installer and resolver, written in Rust"
  homepage "https://github.com/astral-sh/uv"
  url "https://github.com/astral-sh/uv/archive/refs/tags/0.4.27.tar.gz"
  sha256 "48e5eae67204b280a0301fc76d02886a77d09e99e57c383a652170463f977629"
  license any_of: ["Apache-2.0", "MIT"]
  head "https://github.com/astral-sh/uv.git", branch: "main"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "df91535d5ffefd404be85209fa4ea674fe30d99466ce029645eca97ebb6c3df8"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "607dca75d95020ecf9f7e63e08d4ef5b2acf16738a313465b8391941a3e0e528"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "0858caacc4b18c118743c4ae6664a3ace3f6cc887cd0982f5ad3adf285549511"
    sha256 cellar: :any_skip_relocation, sonoma:        "a17705cb27214c1fa08c4d0cb0a8471bc062def75acbea077a1c683d0dfc0bfe"
    sha256 cellar: :any_skip_relocation, ventura:       "81bfe9fab2c0f80cca0a579a51eb2348dbbe07c14478825267fab60ff224a23c"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "252276e93c5f122ebbfc187178a329aaa803ee327e51061ed9e9f5a6f9112ddf"
  end

  depends_on "pkg-config" => :build
  depends_on "rust" => :build

  uses_from_macos "python" => :test
  uses_from_macos "bzip2"
  uses_from_macos "xz"

  def install
    ENV["UV_COMMIT_HASH"] = ENV["UV_COMMIT_SHORT_HASH"] = tap.user
    ENV["UV_COMMIT_DATE"] = time.strftime("%F")
    system "cargo", "install", "--no-default-features", *std_cargo_args(path: "crates/uv")
    generate_completions_from_executable(bin/"uv", "generate-shell-completion")
    generate_completions_from_executable(bin/"uvx", "--generate-shell-completion", base_name: "uvx")
  end

  test do
    (testpath/"requirements.in").write <<~EOS
      requests
    EOS

    compiled = shell_output("#{bin}/uv pip compile -q requirements.in")
    assert_match "This file was autogenerated by uv", compiled
    assert_match "# via requests", compiled

    assert_match "ruff 0.5.1", shell_output("#{bin}/uvx -q ruff@0.5.1 --version")
  end
end
