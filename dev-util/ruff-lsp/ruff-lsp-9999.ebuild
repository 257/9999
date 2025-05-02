# Copyright 2021-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=hatchling
PYTHON_COMPAT=(python3_13)

inherit distutils-r1 optfeature git-r3

DESCRIPTION="A Language Server Protocol implementation for Ruff"
HOMEPAGE="https://github.com/astral-sh/ruff-lsp"
EGIT_REPO_URI="${HOMEPAGE}.git"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="amd64"
RDEPEND="
	dev-python/attrs
	dev-python/cattrs
	dev-python/exceptiongroup
	dev-python/importlib-metadata
	dev-python/lsprotocol
	dev-python/packaging
	dev-python/pygls
	dev-util/ruff
	dev-python/typing-extensions
	dev-python/zipp
"
BDEPEND=""

distutils_enable_tests pytest

src_compile() {
	distutils-r1_src_compile
}

src_install() {
	distutils-r1_src_install
}
