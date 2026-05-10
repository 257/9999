# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit perl-module git-r3

HOMEPAGE="https://github.com/get-iplayer/get_iplayer"
EGIT_REPO_URI="${HOMEPAGE}.git"

DESCRIPTION="Perl Language Server"
SLOT="0"
IUSE=""

RDEPEND="
	dev-perl/LWP-Protocol-https
	dev-perl/XML-LibXML
	media-video/atomicparsley
	media-video/ffmpeg
"
src_unpack() {
    git-r3_src_unpack
}

src_install() {
	dobin "${PN}"
	doman "${PN}.1"
	dodoc "README.md" "CHANGELOG.md" "CONTRIBUTORS"
}
