TERMUX_PKG_HOMEPAGE=https://libevent.org/
TERMUX_PKG_DESCRIPTION="Library that provides asynchronous event notification"
TERMUX_PKG_LICENSE="BSD 3-Clause"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=2.1.12
TERMUX_PKG_REVISION=2
TERMUX_PKG_SRCURL=https://github.com/libevent/libevent/archive/release-${TERMUX_PKG_VERSION}-stable.tar.gz
TERMUX_PKG_SHA256=7180a979aaa7000e1264da484f712d403fcf7679b1e9212c4e3d09f5c93efc24
TERMUX_PKG_AUTO_UPDATE=true
TERMUX_PKG_UPDATE_VERSION_REGEXP="\d+\.\d+\.\d+"
TERMUX_PKG_BREAKS="libevent-dev"
TERMUX_PKG_REPLACES="libevent-dev"
TERMUX_PKG_RM_AFTER_INSTALL="bin/event_rpcgen.py"

TERMUX_PKG_EXTRA_CONFIGURE_ARGS="
-DEVENT__BUILD_SHARED_LIBRARIES=ON
-DEVENT__DISABLE_BENCHMARK=ON
-DEVENT__DISABLE_OPENSSL=ON
-DEVENT__DISABLE_REGRESS=ON
-DEVENT__DISABLE_SAMPLES=ON
-DEVENT__DISABLE_TESTS=ON
-DEVENT__DISABLE_TESTS=ON
-DEVENT__HAVE_WAITPID_WITH_WNOWAIT=ON
-DEVENT__SIZEOF_PTHREAD_T=$((TERMUX_ARCH_BITS/8))
"
