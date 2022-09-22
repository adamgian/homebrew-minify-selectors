class MinifySelectors < Formula
	desc "Post-processor to minify class and ID selector names"
	homepage "https://github.com/adamgian/minify-selectors"
	url "https://github.com/adamgian/minify-selectors/archive/refs/tags/v1.0.0-beta.4.tar.gz"
	sha256 "704c008cfade1237fc8005cd3316dd85fb7f214770de128b80e7fd8b643a7161"
	version "1.0.0-beta.4"
	depends_on "rust" => :build

	def install
		system "cargo", "build", "--release", "--bin", "minify-selectors"
		bin.install "target/release/minify-selectors"
	end
end
