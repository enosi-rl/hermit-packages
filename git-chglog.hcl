description = "CHANGELOG generator implemented in Go (Golang)"
binaries = ["git-chglog"]
test = "git-chglog --version"

version "0.12.0" "0.13.0" "0.14.0" "0.14.1" "0.14.2" "0.15.0" "0.15.1" {
  source = "https://github.com/git-chglog/git-chglog/releases/download/v${version}/git-chglog_${version}_${os}_${arch}.tar.gz"

  auto-version {
    github-release = "git-chglog/git-chglog"
  }
}

version "0.10.0" "0.11.0" "0.11.1" "0.11.2" {
  // No arm64
  platform "darwin" {
    source = "https://github.com/git-chglog/git-chglog/releases/download/v${version}/git-chglog_${version}_${os}_amd64.tar.gz"
  }

  platform "linux" {
    source = "https://github.com/git-chglog/git-chglog/releases/download/v${version}/git-chglog_${version}_${os}_${arch}.tar.gz"
  }

  platform "windows" {
    source = "https://github.com/git-chglog/git-chglog/releases/download/v${version}/git-chglog_${version}_${os}_${arch}.exe"
  }

  auto-version {
    github-release = "git-chglog/git-chglog"
  }
}

# Hermit cannot rename the downloaded binaries to git-chglog as it doesn't unpack and rename fails with permission issues
#version "0.1.0" "0.2.0" "0.3.0" "0.3.1" "0.3.2" "0.3.3" "0.4.0" "0.5.0" "0.6.0" "0.7.0" "0.7.1" "0.8.0" "0.9.1" {
#  binaries = ["git-chglog_${os}_${arch}"]
#  test = "git-chglog_${os}_${arch} --version"
#  // No arm64
#  platform "darwin" {
#    source = "https://github.com/git-chglog/git-chglog/releases/download/${version}/git-chglog_${os}_amd64"
#    on install {
#      message { text = "Unpacking" }
#      rename { from = "${root}/git-chglog_darwin_amd64" to = "${dest}/git-chglog" }
#    }
#  }
#
#  platform "linux" {
#    source = "https://github.com/git-chglog/git-chglog/releases/download/${version}/git-chglog_${os}_${arch}"
#    on unpack {
#      rename { from = "${root}/git-chglog_linux_amd64" to = "${root}/git-chglog" }
#    }
#  }
#
#  platform "windows" {
#    source = "https://github.com/git-chglog/git-chglog/releases/download/${version}/git-chglog_${os}_${arch}.exe"
#  }
#
#  auto-version {
#    github-release = "git-chglog/git-chglog"
#  }
#}
