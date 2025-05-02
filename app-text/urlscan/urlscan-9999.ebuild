# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=(python3_13)

DESCRIPTION="Small program that is designed to integrate with the mutt"
HOMEPAGE="https://github.com/firecat53/urlscan"

DISTUTILS_USE_PEP517=hatchling
inherit git-r3 distutils-r1
EGIT_REPO_URI="${HOMEPAGE}.git"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64" # If set, can not commit because of dev-python/py-nanoid and dev-python/mkdocs-blog-plugin
IUSE="doc"

DEPEND="dev-python/urwid"
