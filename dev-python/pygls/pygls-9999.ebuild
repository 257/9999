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
dev-python/alabaster
dev-python/attrs
dev-python/cattrs
dev-python/certifi
dev-python/charset-normalizer
dev-python/colorama
dev-python/docutils
dev-python/exceptiongroup
dev-python/idna
dev-python/imagesize
dev-python/importlib-metadata
dev-python/jinja2-cli
dev-python/lsprotocol
dev-python/markdown-it-py
dev-python/markupsafe
dev-python/mdit-py-plugins
dev-python/mdurl
dev-python/myst-parser
dev-python/packaging
dev-python/pygments
dev-python/pytz
dev-python/pyyaml
dev-python/requests
dev-python/setuptools
dev-python/snowballstemmer
dev-python/sphinx
dev-python/sphinx-rtd-theme
dev-python/sphinxcontrib-applehelp
dev-python/sphinxcontrib-devhelp
dev-python/sphinxcontrib-htmlhelp
dev-python/sphinxcontrib-jquery
dev-python/sphinxcontrib-jsmath
dev-python/sphinxcontrib-qthelp
dev-python/sphinxcontrib-serializinghtml
dev-python/typing-extensions
dev-python/urllib3
dev-python/zipp
"
