class MinifySelectors < Formula
	desc "Post-processor to minify class and ID selector names"
	homepage "https://github.com/adamgian/minify-selectors"
	url "https://github.com/adamgian/minify-selectors/archive/refs/tags/v2.3.3.tar.gz"
	sha256 "531720ce80b74cb1f0834ba81af98472fe6dafad445b5217bc1f7b42b01b2005"
	version "2.3.3"
	depends_on "rust" => :build

	def install
		system "cargo", "build", "--release", "--bin", "minify-selectors"
		bin.install "target/release/minify-selectors"
	end
end
