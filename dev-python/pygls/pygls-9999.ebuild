# Copyright 2021-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( python3_{11..13} )

inherit distutils-r1 git-r3

DESCRIPTION="Language Server Protocol types code generator & packages"
HOMEPAGE="https://github.com/openlawlibrary/pygls"
EGIT_REPO_URI="${HOMEPAGE}.git"

KEYWORDS="amd64"
SLOT="0"

RDEPEND="
	dev-python/attrs
	dev-python/cattrs
	dev-python/colorama
	dev-python/exceptiongroup
	dev-python/importlib-resources
	dev-python/iniconfig
	dev-python/jsonschema
	dev-python/jsonschema-specifications
	dev-python/packaging
	dev-python/pluggy
	dev-python/pyhamcrest
	dev-python/referencing
	dev-python/rpds-py
	dev-python/tomli
	dev-python/typing-extensions
	dev-python/zipp
	dev-python/websockets
	dev-python/lsprotocol
	dev-util/ruff
"
