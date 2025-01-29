# Copyright 2021-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{12..13} )

inherit distutils-r1 git-r3

DESCRIPTION="xdg base dirs"
HOMEPAGE="https://github.com/srstevenson/${PN}"
EGIT_REPO_URI="${HOMEPAGE}.git"

KEYWORDS="amd64"
SLOT="0"

RDEPEND="
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
