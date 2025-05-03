# Copyright 2021-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=setuptools
PYTHON_COMPAT=(python3_13)

inherit distutils-r1 optfeature git-r3

DESCRIPTION="gentoo fork of mkosi"
HOMEPAGE="https://github.com/257/mkosi"
EGIT_REPO_URI="${HOMEPAGE}.git"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS=""
IUSE="qemu"

RDEPEND="
	qemu? ( app-emulation/qemu )
	sys-apps/systemd
	|| ( sys-firmware/edk2-bin sys-firmware/edk2 )"
BDEPEND="virtual/pandoc"

distutils_enable_tests pytest

src_compile() {
	distutils-r1_src_compile

	./tools/make-man-page.sh || die
}

src_install() {
	distutils-r1_src_install

	doman mkosi/resources/mkosi.1
}

pkg_postinst() {
	optfeature "debian support" dev-util/debootstrap
}

src_unpack() {
	git-r3_src_unpack
}
