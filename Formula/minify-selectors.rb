class MinifySelectors < Formula
	desc "Post-processor to minify class and ID selector names"
	homepage "https://github.com/adamgian/minify-selectors"
	url "https://github.com/adamgian/minify-selectors/archive/refs/tags/v1.0.0-beta.3.tar.gz"
	sha256 "5f585caee76a98ed1b79ad1eac903448cfb7902a53df853887176a4452adcbcb"
	version "1.0.0-beta.3"
	depends_on "rust" => :build

	def install
		system "cargo", "build", "--release", "--bin", "minify-selectors"
		bin.install "target/release/minify-selectors"
	end
end
