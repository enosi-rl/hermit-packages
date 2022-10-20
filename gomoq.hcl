description = "moq is an Interface mocking tool using the Go programming language's go generate command."
binaries = ["moq"]
test = "moq --version"
strip = 1

source = "https://github.com/matryer/moq/releases/download/v${version}/moq_${version}_${os}_${arch}.tar.gz"

version "0.2.7" {
  auto-version {
    github-release = "golang/moq"
  }
}
