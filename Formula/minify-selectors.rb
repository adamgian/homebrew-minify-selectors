class MinifySelectors < Formula
	desc "Post-processor to minify class and ID selector names"
	homepage "https://github.com/adamgian/minify-selectors"
	url "https://github.com/adamgian/minify-selectors/archive/refs/tags/v2.4.1.tar.gz"
	sha256 "f6c911fd8f32759675645f277d60152fecd5c744cd2de7e55f0a7f78cf3ead51"
	version "2.4.1"
	depends_on "rust" => :build

	def install
		system "cargo", "build", "--release", "--bin", "minify-selectors"
		bin.install "target/release/minify-selectors"
	end
end
