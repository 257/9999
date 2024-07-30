# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake toolchain-funcs

DESCRIPTION="A dynamic tiling Wayland compositor that doesn't sacrifice on its looks"
HOMEPAGE="https://github.com/hyprwm/Hyprland"

inherit git-r3
EGIT_REPO_URI="https://github.com/hyprwm/${PN}.git"
HYPRPM_RDEPEND="=dev-libs/hyprland-protocols-9999"
KEYWORDS="~amd64"

LICENSE="BSD"
SLOT="0"
IUSE="X legacy-renderer systemd"

# hyprpm (hyprland plugin manager) requires the dependencies at runtime
# so that it can clone, compile and install plugins.
HYPRPM_RDEPEND="
	app-alternatives/ninja
	dev-build/cmake
	dev-build/meson
	dev-libs/libliftoff
	dev-vcs/git
	virtual/pkgconfig
	gui-libs/aquamarine
"
# bundled wlroots has the following dependency string according to included headers.
# wlroots[drm,gles2-renderer,libinput,x11-backend?,X?]
# enable x11-backend with X and vice versa
WLROOTS_DEPEND="
	dev-libs/wayland
	media-libs/libglvnd
	|| (
		>=media-libs/mesa-24.1.0_rc1[opengl]
		<media-libs/mesa-24.1.0_rc1[egl(+),gles2]
	)
	x11-libs/libdrm
	x11-libs/libxkbcommon
	x11-libs/pixman
	media-libs/libdisplay-info
	sys-apps/hwdata
	dev-libs/libinput
	sys-auth/seatd
	virtual/libudev
	X? (
		x11-libs/libxcb
		x11-libs/xcb-util
		x11-libs/xcb-util-errors
		x11-libs/xcb-util-renderutil
		x11-libs/xcb-util-wm
		x11-base/xwayland
	)
"
WLROOTS_RDEPEND="
	${WLROOTS_DEPEND}
"
WLROOTS_BDEPEND="
	dev-libs/wayland-protocols
	dev-util/hyprwayland-scanner
	virtual/pkgconfig
"
RDEPEND="
	${HYPRPM_RDEPEND}
	${WLROOTS_RDEPEND}
	dev-cpp/tomlplusplus
	dev-libs/glib:2
	dev-libs/libinput
	dev-libs/wayland
	gui-libs/hyprcursor
	=gui-libs/hyprutils-${PV}
	media-libs/libglvnd
	x11-libs/cairo
	x11-libs/libdrm
	x11-libs/libxkbcommon
	x11-libs/pango
	x11-libs/pixman
	X? (
		x11-libs/libxcb:0=
	)
"
DEPEND="
	${RDEPEND}
	${WLROOTS_DEPEND}
	dev-libs/hyprland-protocols
	dev-libs/hyprlang
	dev-libs/wayland-protocols
"
BDEPEND="
	${WLROOTS_BDEPEND}
	app-misc/jq
	dev-build/cmake
	dev-util/hyprwayland-scanner
	virtual/pkgconfig
"

pkg_setup() {
	[[ ${MERGE_TYPE} == binary ]] && return
}

src_configure() {
	local mycmakeargs=(
		-DLEGACY_RENDERER=$(usex legacy-renderer '1' '0')
		-DNO_SYSTEMD=$(usex systemd '0' '1')
		-DNO_XWAYLAND=$(usex X '0' '1')
		-Dwlroots:backends=drm,libinput$(usev X ',x11')
		-Dwlroots:xcb-errors=disabled
	)

	cmake_src_configure
}

src_install() {
	cmake_src_install
}
