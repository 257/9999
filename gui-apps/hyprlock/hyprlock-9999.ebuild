# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Hyprland's GPU-accelerated screen locking utility"
HOMEPAGE="https://github.com/hyprwm/hyprlock"

if [[ "${PV}" = *9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/hyprwm/${PN^}.git"
else
	SRC_URI="https://github.com/hyprwm/${PN^}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
	PATCHES=(
		"${FILESDIR}/0001-fix-CFLAGS-CXXFLAGS-hyprlock.patch"
		"${FILESDIR}/0002-cmake-install-pam-file-fix.patch"
	)
fi

LICENSE="BSD"
SLOT="0"

RDEPEND="
	gui-libs/hyprutils
	dev-libs/date
	dev-libs/wayland
	media-libs/mesa[opengl]
	sys-libs/pam
	dev-libs/glib:2
	>=dev-libs/hyprlang-0.4.0
	media-libs/libglvnd
	x11-libs/cairo
	x11-libs/libxkbcommon
	x11-libs/libdrm
	x11-libs/pango
"
DEPEND="
	${RDEPEND}
	dev-libs/wayland-protocols
"

BDEPEND="
	dev-util/wayland-scanner
	virtual/pkgconfig
"
