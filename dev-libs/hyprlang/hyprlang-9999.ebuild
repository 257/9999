# Copyright 2023-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake toolchain-funcs git-r3

DESCRIPTION="Official implementation library for the hypr config language"
HOMEPAGE="https://github.com/hyprwm/${PN}"
EGIT_REPO_URI="${HOMEPAGE}.git"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS=""

RDEPEND="gui-libs/hyprutils"
DEPEND="${RDEPEND}"
BDEPEND="|| ( >=sys-devel/gcc-15:* >=llvm-core/clang-20:* )"

pkg_setup() {
	[[ ${MERGE_TYPE} == binary ]] && return

	tc-check-min_ver gcc 14
	tc-check-min_ver clang 18
}
