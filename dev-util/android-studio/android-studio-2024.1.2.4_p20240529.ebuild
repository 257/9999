# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit wrapper desktop

RESTRICT="strip"

QA_PREBUILT="
	opt/${PN}/bin/*
	opt/${PN}/jbr/bin/*
	opt/${PN}/jbr/lib/*
	opt/${PN}/jbr/lib/jli/*
	opt/${PN}/jbr/lib/server/*
	opt/${PN}/lib/pty4j-native/linux/*/*
	opt/${PN}/plugins/android-ndk/resources/lldb/android/*/*
	opt/${PN}/plugins/android-ndk/resources/lldb/bin/*
	opt/${PN}/plugins/android-ndk/resources/lldb/lib64/*
	opt/${PN}/plugins/android-ndk/resources/lldb/lib/python3.8/lib-dynload/*
	opt/${PN}/plugins/android/resources/installer/*/*
	opt/${PN}/plugins/android/resources/layoutlib/data/linux/lib64/*
	opt/${PN}/plugins/android/resources/perfetto/*/*
	opt/${PN}/plugins/android/resources/simpleperf/*/*
	opt/${PN}/plugins/android/resources/trace_processor_daemon/*
	opt/${PN}/plugins/android/resources/transport/*/*
	opt/${PN}/plugins/android/resources/transport/native/agent/*/*
	opt/${PN}/plugins/android/resources/transport/*/*
	opt/${PN}/plugins/c-plugin/bin/clang/linux/*
	opt/${PN}/plugins/webp/lib/libwebp/linux/*
"

DESCRIPTION="Android development environment based on IntelliJ IDEA"
HOMEPAGE="http://developer.android.com/sdk/installing/studio.html"
NIGHT=$(ver_cut 6-)
NIGHT="${NIGHT:0:4}-${NIGHT:4:2}-${NIGHT:6:2}"
PV=$(ver_cut 1-4)
SRC_URI="https://redirector.gvt1.com/edgedl/android/studio/ide-zips/${PV}/${PN}-nightly-${NIGHT}-linux.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
IUSE="selinux"
KEYWORDS="amd64"

RDEPEND="${DEPEND}
	selinux? ( sec-policy/selinux-android )
	app-arch/bzip2
	dev-libs/expat
	dev-libs/libffi
	media-libs/fontconfig
	media-libs/freetype
	media-libs/libpng
	media-libs/mesa
	sys-libs/ncurses-compat:5[tinfo]
	sys-libs/zlib
	x11-libs/libdrm
	virtual/libcrypt:=
"

S=${WORKDIR}/${PN}

src_compile() {
	:;
}

src_install() {
	local dir="/opt/${PN}"
	insinto "${dir}"
	doins -r *
	fperms 755 "${dir}"/bin/{fsnotifier,format.sh,game-tools.sh,ltedit.sh,profiler.sh,restarter,inspect.sh,studio.sh,studio_safe.sh}
	fperms -R 755 "${dir}"/bin/lldb
	fperms -R 755 "${dir}"/jbr/bin
	fperms -R 755 "${dir}"/plugins/android-ndk/resources/lldb/bin
	fperms -R 755 "${dir}"/plugins/c-clangd-plugin/bin/clang/linux
	fperms -R 755 "${dir}"/plugins/Kotlin/kotlinc/bin
	fperms 755 ${dir}/jbr/lib/{jexec,jspawnhelper}
	newicon "bin/studio.png" "${PN}.png"
	make_wrapper ${PN} ${dir}/bin/studio.sh
	make_desktop_entry ${PN} "Android Studio" ${PN} "Development;IDE" "StartupWMClass=jetbrains-studio"
}
