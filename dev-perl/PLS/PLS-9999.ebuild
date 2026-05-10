# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit perl-module git-r3

HOMEPAGE="https://github.com/FractalBoy/perl-language-server"
EGIT_REPO_URI="${HOMEPAGE}.git"

DESCRIPTION="Perl Language Server"
SLOT="0"
IUSE=""

RDEPEND="
	dev-perl/Future
	dev-perl/Future-Queue
	dev-perl/IO-Async
	dev-perl/Struct-Dumb
	dev-perl/PPR
	dev-perl/Types-Path-Tiny
	dev-perl/Pod-Markdown
	dev-perl/PPI
	dev-perl/Perl-Critic
	"
src_unpack() {
    git-r3_src_unpack
}
