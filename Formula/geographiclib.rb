class Geographiclib < Formula
  desc "C++ geography library"
  homepage "https://geographiclib.sourceforge.io/"
  url "https://github.com/geographiclib/geographiclib/archive/refs/tags/v2.1.2.tar.gz"
  sha256 "6833c4b33b2aa37b0c4c9fe1b36f958b44afafaafd1b16d7742d80c5e7737777"
  license "MIT"
  head "https://github.com/geographiclib/geographiclib.git", branch: "main"

  bottle do
    sha256 cellar: :any,                 arm64_ventura:  "10cf6efab39f38c196766b1834ae4f38fa0e5a95cebe8d55c8948619e39635cb"
    sha256 cellar: :any,                 arm64_monterey: "94aae0bc5e90445619ce8ffcab8ad5b748bc0e0c538cd4fe44bc75268a82634c"
    sha256 cellar: :any,                 arm64_big_sur:  "255f1273022558178fa4e4649177f921f974ec983f5db0ec66de737e032816d8"
    sha256 cellar: :any,                 ventura:        "54bf6556433f9c426925eb5ef6876d1c6c3aec35cc1cb8269685c43a9a6c9ed5"
    sha256 cellar: :any,                 monterey:       "348294792079ec9c5909bd933b4dfd3879fa26ec2addf6b38ee5a0c529e4541f"
    sha256 cellar: :any,                 big_sur:        "19a15f2d0739d121c7e5afa3fd58782b4dc505439a58bc6e579fe03ed6f5db13"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "5e5be7b2ec72c6b062a24a4ef412898223c9e44ee3d21ef5daa3a7060cb7833e"
  end

  depends_on "cmake" => :build

  def install
    args = ["-DEXAMPLEDIR="]
    args << "-DCMAKE_OSX_SYSROOT=#{MacOS.sdk_path}" if OS.mac?
    system "cmake", "-S", ".", "-B", "build", *args, *std_cmake_args
    system "cmake", "--build", "build"
    system "cmake", "--install", "build"
  end

  test do
    system bin/"GeoConvert", "-p", "-3", "-m", "--input-string", "33.3 44.4"
  end
end
