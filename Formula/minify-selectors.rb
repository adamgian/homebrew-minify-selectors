class MinifySelectors < Formula
	desc "Post-processor to minify class and ID selector names"
	homepage "https://github.com/adamgian/minify-selectors"
	url "https://github.com/adamgian/minify-selectors/archive/refs/tags/v2.1.3.tar.gz"
	sha256 "a0c1e2b117e5c9d8dcdde023d248c49885f0b6d9e990ad8693ec09c84255df34"
	version "2.1.3"
	depends_on "rust" => :build

	def install
		system "cargo", "build", "--release", "--bin", "minify-selectors"
		bin.install "target/release/minify-selectors"
	end
end
