class MinifySelectors < Formula
	desc "Post-processor to minify class and ID selector names"
	homepage "https://github.com/adamgian/minify-selectors"
	url "https://github.com/adamgian/minify-selectors/archive/refs/tags/v2.6.2.tar.gz"
	sha256 "dc2531ab5456f5159091070c68ffc9f48427f3253e94e233728923d0935eb38d"
	version "2.6.2"
	depends_on "rust" => :build

	def install
		system "cargo", "build", "--release", "--bin", "minify-selectors"
		bin.install "target/release/minify-selectors"
	end
end
