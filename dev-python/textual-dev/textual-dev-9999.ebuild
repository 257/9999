# Copyright 2021-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{12..13} )

inherit distutils-r1 git-r3

DESCRIPTION="Python port of the fzy fuzzy string matching algorithm."
HOMEPAGE="https://github.com/textualize/${PN}"
EGIT_REPO_URI="${HOMEPAGE}.git"

KEYWORDS="amd64"
SLOT="0"

RDEPEND="
	>=dev-python/textual-0.86.2[${PYTHON_USEDEP}]
	>=dev-python/textual-serve-1.0.3[${PYTHON_USEDEP}]
	>=dev-python/aiohttp-3.8.1[${PYTHON_USEDEP}]
	>=dev-python/click-8.1.2[${PYTHON_USEDEP}]
	>=dev-python/msgpack-1.0.3[${PYTHON_USEDEP}]
	=dev-python/typing-extensions-4*[${PYTHON_USEDEP}]
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
