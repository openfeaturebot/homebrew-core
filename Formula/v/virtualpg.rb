class Virtualpg < Formula
  desc "Loadable dynamic extension for SQLite and SpatiaLite"
  homepage "https://www.gaia-gis.it/fossil/virtualpg/index"
  url "https://www.gaia-gis.it/gaia-sins/virtualpg-2.0.1.tar.gz"
  sha256 "be2aebeb8c9ff274382085f51d422e823858bca4f6bc2fa909816464c6a1e08b"
  license "MPL-1.1"

  livecheck do
    url :homepage
    regex(/href=.*?virtualpg[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end

  bottle do
    sha256 cellar: :any,                 arm64_sequoia:  "4d37d4aac936cd744979c2906aff3e8e41d4453b69c06a22afba01485803258a"
    sha256 cellar: :any,                 arm64_sonoma:   "300b66b9b3ef1e6928eb4ee54f1c905ec917b41a09d677c15ecee7069afa2c9e"
    sha256 cellar: :any,                 arm64_ventura:  "b503ba98f3b0ef365ca8be59c9de4cf2f8a75b5a5504a1348cfe2631768dbf90"
    sha256 cellar: :any,                 arm64_monterey: "3cf246326fa5bf708a4181fc9c0c1a05b086e0ac2d74a6d6b0ecc3f0605be984"
    sha256 cellar: :any,                 arm64_big_sur:  "1d87321f13aec1d9ca1b75a9d3a3750f427910aead760d88d94ed4c9fd63e72b"
    sha256 cellar: :any,                 sonoma:         "43d5ff42ac40de3c44447fd34a0213fc332a599eda016c48e3d9b0aa9c756a51"
    sha256 cellar: :any,                 ventura:        "70ea10f2c49ecb8af746ec571c72048ed35ab4842240756c029f8197e318570c"
    sha256 cellar: :any,                 monterey:       "f5cb68aeeccb43a025faa5165ef05d8218222af780197d05c28af24bb6f098f5"
    sha256 cellar: :any,                 big_sur:        "b0753a8f3cca894abd6c422479062ed242e6a780c497b94d7a5596009508f678"
    sha256 cellar: :any,                 catalina:       "68282c2258b52c72bad812eddadef2f9ce0c34e4011ceb43522ec1e2b21bbc4f"
    sha256 cellar: :any,                 mojave:         "5e14713d8a04acecf93faf9c387f0fcff32b8f5b39ee208b98355d638d60f92a"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "63f218f9e93c2976082142736ae74a098b3e0e1e6aa99ad3f5da9669c4d2f68f"
  end

  depends_on "libspatialite"
  depends_on "postgis"
  depends_on "postgresql@14"
  depends_on "sqlite"

  on_linux do
    depends_on "libpq"
  end

  def install
    # New SQLite3 extension won't load via SELECT load_extension('mod_virtualpg');
    # unless named mod_virtualpg.dylib (should actually be mod_virtualpg.bundle)
    # See: https://groups.google.com/forum/#!topic/spatialite-users/EqJAB8FYRdI
    # needs upstream fixes in both SQLite and libtool
    inreplace "configure",
              "shrext_cmds='`test .$module = .yes && echo .so || echo .dylib`'",
              "shrext_cmds='.dylib'"

    system "./configure", "--enable-shared=yes",
                          "--disable-dependency-tracking",
                          "--with-pgconfig=#{Formula["postgresql@14"].opt_bin}/pg_config",
                          "--prefix=#{prefix}"
    system "make", "install"
  end

  test do
    # Verify mod_virtualpg extension can be loaded using Homebrew's SQLite
    system "echo", "\" SELECT load_extension('#{opt_lib}/mod_virtualpg');\" | #{Formula["sqlite"].opt_bin}/sqlite3"
  end
end
