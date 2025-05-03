# Copyright 2021-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=flit
PYTHON_COMPAT=(python3_13)

inherit distutils-r1 git-r3

DESCRIPTION="Language Server Protocol types code generator & packages"
HOMEPAGE="https://github.com/microsoft/lsprotocol"
EGIT_REPO_URI="${HOMEPAGE}.git"

KEYWORDS=""
SLOT="0"
S="${S}/packages/python"

RDEPEND="
	dev-python/attrs
	dev-python/cattrs
	dev-python/exceptiongroup
	dev-python/typing-extensions
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
