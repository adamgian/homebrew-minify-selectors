class MinifySelectors < Formula
	desc "Post-processor to minify class and ID selector names"
	homepage "https://github.com/adamgian/minify-selectors"
	url "https://github.com/adamgian/minify-selectors/archive/refs/tags/v1.10.0.tar.gz"
	sha256 "b0111454a6cc4e33eb877432fc5b2800c69646864c4d85501fd94f4057ec9144"
	version "1.10.0"
	depends_on "rust" => :build

	def install
		system "cargo", "build", "--release", "--bin", "minify-selectors"
		bin.install "target/release/minify-selectors"
	end
end
