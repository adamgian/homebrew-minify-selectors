class MinifySelectors < Formula
	desc "Post-processor to minify class and ID selector names"
	homepage "https://github.com/adamgian/minify-selectors"
	url "https://github.com/adamgian/minify-selectors/archive/refs/tags/v1.7.2.tar.gz"
	sha256 "1afb1da21f2ed3e0f138ad69abad96dcc7c6b95897fe8dfe0617d248b02d6df9"
	version "1.7.2"
	depends_on "rust" => :build

	def install
		system "cargo", "build", "--release", "--bin", "minify-selectors"
		bin.install "target/release/minify-selectors"
	end
end
