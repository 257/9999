# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.4

EAPI=8

CRATES="
	addr2line@0.24.2
	adler2@2.0.0
	ahash@0.8.11
	aho-corasick@1.1.3
	allocator-api2@0.2.21
	anstream@0.6.18
	anstyle-parse@0.2.6
	anstyle-query@1.1.2
	anstyle-wincon@3.0.6
	anstyle@1.0.10
	anyhow@1.0.94
	async-channel@1.9.0
	async-channel@2.3.1
	async-executor@1.13.1
	async-global-executor@2.4.1
	async-io@1.13.0
	async-io@2.4.0
	async-lock@2.8.0
	async-lock@3.4.0
	async-std@1.13.0
	async-task@4.7.1
	async-trait@0.1.83
	atoi@2.0.0
	atomic-waker@1.1.2
	auto_impl@1.2.0
	autocfg@1.4.0
	backtrace@0.3.74
	base64@0.22.1
	base64ct@1.6.0
	bindgen@0.66.1
	biome_console@0.5.7
	biome_deserialize@0.6.0
	biome_deserialize_macros@0.6.0
	biome_diagnostics@0.5.7
	biome_diagnostics_categories@0.5.7
	biome_diagnostics_macros@0.5.7
	biome_json_factory@0.5.7
	biome_json_parser@0.5.7
	biome_json_syntax@0.5.7
	biome_markup@0.5.7
	biome_parser@0.5.7
	biome_rowan@0.5.7
	biome_string_case@0.5.7
	biome_text_edit@0.5.7
	biome_text_size@0.5.7
	biome_unicode_table@0.5.7
	bitflags@1.3.2
	bitflags@2.6.0
	block-buffer@0.10.4
	blocking@1.6.1
	bpaf@0.9.15
	bpaf_derive@0.5.13
	bstr@1.11.0
	bumpalo@3.16.0
	byteorder@1.5.0
	bytes@1.9.0
	cc@1.2.3
	cexpr@0.6.0
	cfg-if@1.0.0
	chrono@0.4.39
	clang-sys@1.8.1
	clap@4.5.23
	clap_builder@4.5.23
	clap_derive@4.5.18
	clap_lex@0.7.4
	cmake@0.1.52
	colorchoice@1.0.3
	concurrent-queue@2.5.0
	console@0.15.8
	const-oid@0.9.6
	convert_case@0.6.0
	countme@3.0.1
	cpufeatures@0.2.16
	crc-catalog@2.4.0
	crc32fast@1.4.2
	crc@3.2.1
	crossbeam-channel@0.5.13
	crossbeam-deque@0.8.5
	crossbeam-epoch@0.9.18
	crossbeam-queue@0.3.11
	crossbeam-utils@0.8.20
	crossbeam@0.8.4
	crypto-common@0.1.6
	cstree@0.12.2
	cstree_derive@0.12.2
	dashmap@5.5.3
	dashmap@6.1.0
	der@0.7.9
	deranged@0.3.11
	digest@0.10.7
	directories@5.0.1
	dirs-sys@0.4.1
	displaydoc@0.2.5
	dotenv@0.15.0
	dotenvy@0.15.7
	drop_bomb@0.1.5
	dunce@1.0.5
	dyn-clone@1.0.17
	either@1.13.0
	encode_unicode@0.3.6
	enumflags2@0.7.10
	enumflags2_derive@0.7.10
	equivalent@1.0.1
	errno@0.3.10
	etcetera@0.8.0
	event-listener-strategy@0.5.3
	event-listener@2.5.3
	event-listener@5.3.1
	fastrand@1.9.0
	fastrand@2.3.0
	fixedbitset@0.4.2
	flate2@1.0.35
	flume@0.11.1
	form_urlencoded@1.2.1
	fs_extra@1.3.0
	futures-channel@0.3.31
	futures-core@0.3.31
	futures-executor@0.3.31
	futures-intrusive@0.5.0
	futures-io@0.3.31
	futures-lite@1.13.0
	futures-lite@2.5.0
	futures-macro@0.3.31
	futures-sink@0.3.31
	futures-task@0.3.31
	futures-util@0.3.31
	futures@0.3.31
	fxhash@0.2.1
	generic-array@0.14.7
	getrandom@0.2.15
	gimli@0.31.1
	glob@0.3.1
	globset@0.4.15
	gloo-timers@0.3.0
	hashbrown@0.12.3
	hashbrown@0.14.5
	hashbrown@0.15.2
	hashlink@0.9.1
	hdrhistogram@7.5.4
	heck@0.4.1
	heck@0.5.0
	hermit-abi@0.3.9
	hermit-abi@0.4.0
	hex@0.4.3
	hkdf@0.12.4
	hmac@0.12.1
	home@0.5.9
	httparse@1.9.5
	icu_collections@1.5.0
	icu_locid@1.5.0
	icu_locid_transform@1.5.0
	icu_locid_transform_data@1.5.0
	icu_normalizer@1.5.0
	icu_normalizer_data@1.5.0
	icu_properties@1.5.1
	icu_properties_data@1.5.0
	icu_provider@1.5.0
	icu_provider_macros@1.5.0
	idna@1.0.3
	idna_adapter@1.2.0
	ignore@0.4.23
	indexmap@1.9.3
	indexmap@2.7.0
	insta@1.41.1
	instant@0.1.13
	io-lifetimes@1.0.11
	is_ci@1.2.0
	is_terminal_polyfill@1.70.1
	itertools@0.10.5
	itoa@1.0.14
	js-sys@0.3.76
	json-strip-comments@1.0.4
	kv-log-macro@1.0.7
	lazy_static@1.5.0
	lazycell@1.3.0
	libc@0.2.168
	libloading@0.8.6
	libm@0.2.11
	libmimalloc-sys@0.1.39
	libredox@0.1.3
	libsqlite3-sys@0.30.1
	linked-hash-map@0.5.6
	linux-raw-sys@0.3.8
	linux-raw-sys@0.4.14
	litemap@0.7.4
	lock_api@0.4.12
	log@0.4.22
	lsp-server@0.7.7
	lsp-types@0.94.1
	lsp-types@0.95.1
	matchers@0.1.0
	md-5@0.10.6
	memchr@2.7.4
	memoffset@0.8.0
	mimalloc@0.1.43
	minimal-lexical@0.2.1
	miniz_oxide@0.8.0
	mio@1.0.3
	multimap@0.8.3
	newtype-uuid@1.1.3
	nom@7.1.3
	ntest@0.9.3
	ntest_test_cases@0.9.3
	ntest_timeout@0.9.3
	nu-ansi-term@0.46.0
	nu-ansi-term@0.50.1
	num-bigint-dig@0.8.4
	num-conv@0.1.0
	num-integer@0.1.46
	num-iter@0.1.45
	num-traits@0.2.19
	num_cpus@1.16.0
	object@0.36.5
	once_cell@1.20.2
	option-ext@0.2.0
	overload@0.1.1
	owo-colors@4.1.0
	oxc_resolver@1.12.0
	parking@2.2.1
	parking_lot@0.12.3
	parking_lot_core@0.9.10
	paste@1.0.15
	path-absolutize@3.1.1
	path-dedot@3.1.1
	peeking_take_while@0.1.2
	pem-rfc7468@0.7.0
	percent-encoding@2.3.1
	petgraph@0.6.5
	pg_query@0.8.2
	pin-project-internal@1.1.7
	pin-project-lite@0.2.15
	pin-project@1.1.7
	pin-utils@0.1.0
	piper@0.2.4
	pkcs1@0.7.5
	pkcs8@0.10.2
	pkg-config@0.3.31
	polling@2.8.0
	polling@3.7.4
	powerfmt@0.2.0
	ppv-lite86@0.2.20
	prettyplease@0.2.25
	proc-macro-crate@3.2.0
	proc-macro-error-attr@1.0.4
	proc-macro-error@1.0.4
	proc-macro2@1.0.92
	prost-build@0.10.4
	prost-derive@0.10.1
	prost-types@0.10.1
	prost@0.10.4
	protobuf-parse@3.7.1
	protobuf-support@3.7.1
	protobuf@3.7.1
	quick-junit@0.5.1
	quick-xml@0.37.1
	quote@1.0.37
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	rayon-core@1.12.1
	rayon@1.10.0
	redox_syscall@0.5.7
	redox_users@0.4.6
	regex-automata@0.1.10
	regex-automata@0.4.9
	regex-syntax@0.6.29
	regex-syntax@0.8.5
	regex@1.11.1
	ring@0.17.8
	rsa@0.9.7
	rustc-demangle@0.1.24
	rustc-hash@1.1.0
	rustc-hash@2.1.0
	rustix@0.37.27
	rustix@0.38.42
	rustls-pemfile@2.2.0
	rustls-pki-types@1.10.0
	rustls-webpki@0.102.8
	rustls@0.23.19
	ryu@1.0.18
	same-file@1.0.6
	schemars@0.8.21
	schemars_derive@0.8.21
	scopeguard@1.2.0
	serde@1.0.215
	serde_derive@1.0.215
	serde_derive_internals@0.29.1
	serde_json@1.0.133
	serde_plain@1.0.2
	serde_repr@0.1.19
	serde_spanned@0.6.8
	serde_urlencoded@0.7.1
	sha1@0.10.6
	sha2@0.10.8
	sharded-slab@0.1.7
	shlex@1.3.0
	signal-hook-registry@1.4.2
	signature@2.2.0
	simdutf8@0.1.5
	similar@2.6.0
	slab@0.4.9
	smallvec@1.13.2
	socket2@0.4.10
	socket2@0.5.8
	spin@0.9.8
	spki@0.7.3
	sptr@0.3.2
	sqlformat@0.2.6
	sqlx-core@0.8.2
	sqlx-macros-core@0.8.2
	sqlx-macros@0.8.2
	sqlx-mysql@0.8.2
	sqlx-postgres@0.8.2
	sqlx-sqlite@0.8.2
	sqlx@0.8.2
	stable_deref_trait@1.2.0
	stringprep@0.1.5
	strip-ansi-escapes@0.2.0
	strsim@0.11.1
	subtle@2.6.1
	supports-color@3.0.2
	syn@1.0.109
	syn@2.0.90
	synstructure@0.13.1
	target-triple@0.1.3
	tempfile@3.14.0
	termcolor@1.4.1
	text-size@1.1.1
	thiserror-impl@1.0.69
	thiserror-impl@2.0.6
	thiserror@1.0.69
	thiserror@2.0.6
	thread_local@1.1.8
	threadpool@1.8.1
	tikv-jemalloc-sys@0.6.0+5.3.0-1-ge13ca993e8ccb9ba9847cc330696e02839f328f7
	tikv-jemallocator@0.6.0
	time-core@0.1.2
	time-macros@0.2.19
	time@0.3.37
	tinystr@0.7.6
	tinyvec@1.8.0
	tinyvec_macros@0.1.1
	tokio-macros@2.4.0
	tokio-util@0.7.13
	tokio@1.42.0
	toml@0.8.19
	toml_datetime@0.6.8
	toml_edit@0.22.22
	tower-layer@0.3.3
	tower-lsp-macros@0.9.0
	tower-lsp@0.20.0
	tower-service@0.3.3
	tower@0.4.13
	tracing-appender@0.2.3
	tracing-attributes@0.1.28
	tracing-core@0.1.33
	tracing-log@0.2.0
	tracing-serde@0.2.0
	tracing-subscriber@0.3.19
	tracing-tree@0.4.0
	tracing@0.1.41
	tree-sitter@0.20.10
	triomphe@0.1.14
	trybuild@1.0.101
	typenum@1.17.0
	unicode-bidi@0.3.17
	unicode-bom@2.0.3
	unicode-ident@1.0.14
	unicode-normalization@0.1.24
	unicode-properties@0.1.3
	unicode-segmentation@1.12.0
	unicode-width@0.1.14
	unicode_categories@0.1.1
	untrusted@0.9.0
	url@2.5.4
	utf16_iter@1.0.5
	utf8_iter@1.0.4
	utf8parse@0.2.2
	uuid@1.11.0
	valuable@0.1.0
	value-bag@1.10.0
	vcpkg@0.2.15
	version_check@0.9.5
	vte@0.11.1
	vte_generate_state_changes@0.1.2
	waker-fn@1.2.0
	walkdir@2.5.0
	wasi@0.11.0+wasi-snapshot-preview1
	wasite@0.1.0
	wasm-bindgen-backend@0.2.99
	wasm-bindgen-futures@0.4.49
	wasm-bindgen-macro-support@0.2.99
	wasm-bindgen-macro@0.2.99
	wasm-bindgen-shared@0.2.99
	wasm-bindgen@0.2.99
	web-sys@0.3.76
	webpki-roots@0.26.7
	which@4.4.2
	whoami@1.5.2
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.9
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-sys@0.48.0
	windows-sys@0.52.0
	windows-sys@0.59.0
	windows-targets@0.48.5
	windows-targets@0.52.6
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_gnullvm@0.52.6
	windows_aarch64_msvc@0.48.5
	windows_aarch64_msvc@0.52.6
	windows_i686_gnu@0.48.5
	windows_i686_gnu@0.52.6
	windows_i686_gnullvm@0.52.6
	windows_i686_msvc@0.48.5
	windows_i686_msvc@0.52.6
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnu@0.52.6
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_gnullvm@0.52.6
	windows_x86_64_msvc@0.48.5
	windows_x86_64_msvc@0.52.6
	winnow@0.6.20
	write-json@0.1.4
	write16@1.0.0
	writeable@0.5.5
	xflags-macros@0.3.2
	xflags@0.3.2
	xshell-macros@0.2.7
	xshell@0.2.7
	yoke-derive@0.7.5
	yoke@0.7.5
	zerocopy-derive@0.7.35
	zerocopy@0.7.35
	zerofrom-derive@0.1.5
	zerofrom@0.1.5
	zeroize@1.8.1
	zerovec-derive@0.10.3
	zerovec@0.10.4
	zip@0.6.6
"

inherit cargo git-r3

DESCRIPTION=""
HOMEPAGE=""
SRC_URI="
	${CARGO_CRATE_URIS}
"

LICENSE=""
# Dependent crate licenses
LICENSE+=" Apache-2.0 BSD ISC MIT MPL-2.0 Unicode-3.0"
SLOT="0"
KEYWORDS="~amd64"
EGIT_REPO_URI="https://github.com/supabase-community/postgres_lsp.git"


src_unpack() {
    git-r3_src_unpack
    cargo_live_src_unpack
}