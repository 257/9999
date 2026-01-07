# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake git-r3

DESCRIPTION="Extremely fast, in memory, JSON and interface library for modern C++"
HOMEPAGE="https://github.com/stephenberry/${PN}"
EGIT_REPO_URI="${HOMEPAGE}.git"

LICENSE="MIT"
SLOT=0
KEYWORDS=""

IUSE="examples fuzzing test"
RESTRICT="!test? ( test )"

DEPEND="
	test? (
		dev-cpp/asio
		>=dev-cpp/eigen-3.4
		dev-cpp/ut2-glaze
	)
"
RDEPEND="${DEPEND}"

src_unpack() {
	git-r3_src_unpack
}

src_configure() {
	local mycmakeargs=(
		-DCMAKE_SKIP_INSTALL_RULES=OFF
		-Dglaze_DEVELOPER_MODE=ON
		-Dglaze_ENABLE_FUZZING=$(usex fuzzing)
		-Dglaze_BUILD_EXAMPLES=$(usex examples)
		-DBUILD_TESTING=$(usex test)
	)

	cmake_src_configure
}
