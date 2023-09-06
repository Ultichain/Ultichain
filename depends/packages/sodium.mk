package=sodium
$(package)_version=1.0.18
$(package)_download_path=https://download.libsodium.org/libsodium/releases
$(package)_file_name=libsodium-$($(package)_version)-stable.tar.gz
$(package)_sha256_hash=b21479c0359115bc4ce2d053b28c435eaacd1bbf1d55b449ceb0d87280367e12

define $(package)_set_vars
$(package)_config_opts+=--with-pic --disable-shared
$(package)_cflags=-fvisibility=hidden
$(package)_cflags_linux=-fPIC
$(package)_cflags_armv7l_linux+=-march=armv7-a
endef

define $(package)_config_cmds
  $($(package)_autoconf)
endef

define $(package)_build_cmds
  $(MAKE)
endef

define $(package)_stage_cmds
  $(MAKE) DESTDIR=$($(package)_staging_dir) install
endef