# Copyright 2021-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=hatchling
PYTHON_COMPAT=(python3_13)

inherit distutils-r1 git-r3

DESCRIPTION="A better way to work with systemd units"
HOMEPAGE="https://github.com/isd-project/${PN}"
EGIT_REPO_URI="${HOMEPAGE}.git"

KEYWORDS="amd64"
SLOT="0"

RDEPEND="
	dev-python/xdg-base-dirs
	dev-python/pfzy
	dev-python/pydantic
	dev-python/textual
	dev-python/textual-dev
	dev-python/textual-serve
	dev-python/pydantic-settings
"

src_prepare() {
	distutils-r1_src_prepare
}

src_compile() {
	distutils-r1_src_compile
}

src_install() {
	distutils-r1_src_install
}
