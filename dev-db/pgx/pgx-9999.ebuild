
EAPI=8
SLOT="0"
KEYWORDS="amd64"

inherit git-r3 go-module

DESCRIPTION="A pure Go driver and toolkit for PostgreSQL."
HOMEPAGE="https://github.com/jackc/${PN}"
EGIT_REPO_URI="${HOMEPAGE}.git"

src_unpack() {
	git-r3_src_unpack
	go-module_live_vendor
}

src_compile() {
    ego build
}

src_install() {
    default
}
