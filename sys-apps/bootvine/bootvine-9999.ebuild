# Copyright 2011-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# Avoid QA warnings
TMPFILES_OPTIONAL=1
UDEV_OPTIONAL=1

QA_PKGCONFIG_VERSION=$(ver_cut 1)

inherit cargo git-r3 systemd

DESCRIPTION="Boot and shutdown progress for systemd on the console, with each job nested under the units waiting on it"
HOMEPAGE="https://codeberg.org/wvhulle/bootvine"
EGIT_REPO_URI="${HOMEPAGE}.git"

SRC_URI="
	${CARGO_CRATE_URIS}
"

LICENSE="GPL-3+"
# Dependent crate licenses
LICENSE+="
	Apache-2.0 LGPL-2.1+ GCC-exception-2.0 MIT Unicode-3.0
	Unicode-DFS-2016 Unlicense WTFPL-2 ZLIB
"
SLOT="0"

src_unpack() {
    git-r3_src_unpack
    pushd "${S}/${PN}" >/dev/null || die
    cargo_live_src_unpack
    popd >/dev/null || die
}

src_install() {
	cargo_src_install --path "${PN}"
	systemd_dounit "${PN}/system-files/systemd/${PN}.service"
	systemd_dounit "${PN}/system-files/systemd/${PN}-shutdown.service"
	einstalldocs
}
