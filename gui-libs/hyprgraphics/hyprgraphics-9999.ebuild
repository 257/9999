# Copyright 2023-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Aquamarine is a very light linux rendering backend library"
HOMEPAGE="https://github.com/hyprwm/aquamarine"
LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64"

inherit git-r3
EGIT_REPO_URI="https://github.com/hyprwm/${PN^}.git"

# Upstream states that the simpleWindow test is broken, see bug 936653
RESTRICT="test"
RDEPEND="
	media-libs/libjxl
	media-libs/libspng
"
DEPEND="
	${RDEPEND}
"

src_prepare() {
	# sed -i "/add_compile_options(-O3)/d" "${S}/CMakeLists.txt" || die
	cmake_src_prepare
}
