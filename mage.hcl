description = "a Make/rake-like dev tool using Go"
binaries = ["mage"]
test = "mage -version"

version "1.11.0" {
  platform "darwin" {
    source = "https://github.com/magefile/mage/releases/download/v${version}/mage_${version}_macOS-64bit.tar.gz"
  }
  
  platform "linux" {
    source = "https://github.com/magefile/mage/releases/download/v${version}/mage_${version}_Linux-64bit.tar.gz"
  }

  auto-version {
    github-release = "magefile/mage"
  }
}

version "1.12.1" "1.13.0" "1.14.0" {
  platform "darwin" {
    source = "https://github.com/magefile/mage/releases/download/v${version}/mage_${version}_macOS-64bit.tar.gz"
  }
  
  platform "darwin" "arm64" {
    source = "https://github.com/magefile/mage/releases/download/v${version}/mage_${version}_macOS-ARM64.tar.gz"
  }
  
  platform "linux" {
    source = "https://github.com/magefile/mage/releases/download/v${version}/mage_${version}_Linux-64bit.tar.gz"
  }

  auto-version {
    github-release = "magefile/mage"
  }
}
