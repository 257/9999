# Copyright 1999-2026 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit systemd toolchain-funcs git-r3

DESCRIPTION="NVIDIA Accelerated Graphics Driver"
HOMEPAGE="https://github.com/NVIDIA"
EGIT_REPO_URI="${HOMEPAGE}/${PN}.git"

LICENSE="
	NVIDIA-2025 Apache-2.0 Boost-1.0 BSD BSD-2 GPL-2 MIT ZLIB
	curl openssl public-domain
"
SLOT="0"
KEYWORDS="-* ~amd64 ~arm64"

COMMON_DEPEND="
	acct-group/video
	acct-user/nvpd
	net-libs/libtirpc:=
"
RDEPEND="${COMMON_DEPEND}"
DEPEND="${COMMON_DEPEND}"

src_prepare() {
	default

	sed 's/__USER__/nvpd/' \
		init/systemd/nvidia-persistenced.service.template \
		> "${T}"/nvidia-persistenced.service || die
}

src_compile() {
	tc-export AR CC CXX LD OBJCOPY OBJDUMP PKG_CONFIG
	NV_ARGS=(
		PREFIX="${EPREFIX}"/usr
		NV_USE_BUNDLED_LIBJANSSON=0
		NV_VERBOSE=1 DO_STRIP= MANPAGE_GZIP= OUTPUTDIR=out
	)
	emake "${NV_ARGS[@]}"
}

src_install() {
	local libdir=$(get_libdir) libdir32=$(ABI=x86 get_libdir)

	NV_ARGS=( PREFIX="${EPREFIX}"/usr DESTDIR="${D}" LIBDIR="${ED}"/usr/${libdir} )

	local -A paths=(
		[APPLICATION_PROFILE]=/usr/share/nvidia
		[CUDA_ICD]=/etc/OpenCL/vendors
		[EGL_EXTERNAL_PLATFORM_JSON]=/usr/share/egl/egl_external_platform.d
		[FIRMWARE]=/lib/firmware/nvidia/${PV}
		[GBM_BACKEND_LIB_SYMLINK]=/usr/${libdir}/gbm
		[GLVND_EGL_ICD_JSON]=/usr/share/glvnd/egl_vendor.d
		[OPENGL_DATA]=/usr/share/nvidia
		[VULKANSC_ICD_JSON]=/usr/share/vulkansc
		[VULKAN_ICD_JSON]=/usr/share/vulkan
		[WINE_LIB]=/usr/${libdir}/nvidia/wine
		[XORG_OUTPUTCLASS_CONFIG]=/usr/share/X11/xorg.conf.d

		[GLX_MODULE_SHARED_LIB]=/usr/${libdir}/xorg/modules/extensions
		[GLX_MODULE_SYMLINK]=/usr/${libdir}/xorg/modules
		[XMODULE_SHARED_LIB]=/usr/${libdir}/xorg/modules
	)

	local DISABLE_AUTOFORMATTING=yes

	emake "${NV_ARGS[@]}" install
	newconfd "${FILESDIR}"/nvidia-persistenced.confd nvidia-persistenced
	newinitd "${FILESDIR}"/nvidia-persistenced.initd nvidia-persistenced
	systemd_dounit "${T}"/nvidia-persistenced.service
}
