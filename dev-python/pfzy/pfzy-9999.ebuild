# Copyright 2021-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=(python3_13)

inherit distutils-r1 git-r3

DESCRIPTION="Python port of the fzy fuzzy string matching algorithm."
HOMEPAGE="https://github.com/kazhala/${PN}"
EGIT_REPO_URI="${HOMEPAGE}.git"

KEYWORDS="amd64"
SLOT="0"

RDEPEND="
	dev-python/furo
	dev-python/myst-parser
	dev-python/sphinx
	dev-python/sphinx-copybutton
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
