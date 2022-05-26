class MinifySelector < Formula
	desc "Post-processor to minify class and ID selector names"
	homepage "https://github.com/adamgian/minify-selectors"
	url "https://github.com/adamgian/minify-selectors/archive/refs/tags/v0.11.3.tar.gz"
	sha256 "7310954cc1b1ccf601db1e4cbe996c8dc0bfb221c2e58e7444f6ceb82e944d73"
	version "0.11.3"
	depends_on "rust" => :build

	def install
		system "cargo", "build", "--release", "--bin", "minify-selectors"
		bin.install "target/release/minify-selectors"
	end
end
