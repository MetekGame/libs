project "LibMariaDB-Connector"
	kind "StaticLib"
	language "C"
	warnings "Extra"
	staticruntime "on"

	targetdir "../../Out/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	includedirs {
		"./include",
		"./zlib",
	}

	vpaths {
		["Headers"] = { "**.h" },
		["Sources"] = { "**.c", "**.cpp" },
		["Docs"] = "**.md"
	}

	files {
		"./include/*.h", "./plugins/auth/my_auth.c",  "./plugins/auth/old_password.c", "./plugins/pvio/pvio_socket.c",
		"./libmariadb/ma_array.c", "./libmariadb/ma_charset.c", "./libmariadb/ma_hashtbl.c", "./libmariadb/ma_net.c",
		"./libmariadb/mariadb_charset.c", "./libmariadb/ma_time.c", "./libmariadb/ma_default.c", "./libmariadb/ma_errmsg.c",
		"./libmariadb/mariadb_lib.c", "./libmariadb/ma_list.c", "./libmariadb/ma_pvio.c", "./libmariadb/ma_tls.c",
		"./libmariadb/ma_alloc.c", "./libmariadb/ma_compress.c", "./libmariadb/ma_init.c", "./libmariadb/ma_password.c",
		"./libmariadb/ma_ll2str.c", "./libmariadb/ma_sha1.c", "./libmariadb/mariadb_stmt.c", "./libmariadb/ma_loaddata.c",
		"./libmariadb/ma_stmt_codec.c", "./libmariadb/ma_string.c", "./libmariadb/ma_dtoa.c", "./libmariadb/mariadb_rpl.c", 
		"./libmariadb/ma_client_plugin.c", "./libmariadb/ma_io.c", "./libmariadb/mariadb_dyncol.c", "./libmariadb/mariadb_async.c", 
		"./libmariadb/ma_context.c",
		"./zlib/adler32.c", "./zlib/compress.c", "./zlib/crc32.c", "./zlib/deflate.c", "./zlib/gzclose.c", "./zlib/gzlib.c",
		"./zlib/gzread.c", "./zlib/gzwrite.c", "./zlib/infback.c", "./zlib/inffast.c", "./zlib/inflate.c", "./zlib/inftrees.c",
		"./zlib/trees.c", "./zlib/uncompr.c", "./zlib/zutil.c",
	}

	defines { "HAVE_COMPRESS", "LIBMARIADB", "THREAD", "HAVE_TLS", 'SIZEOF_CHARP=4', 'MARIADB_MACHINE_TYPE="i386"', "NDEBUG", "DBUG_OFF"  }

	filter "system:Windows"
		disablewarnings { "4996" }
		defines { "WIN32", "_WINDOWS", "WIN32_LEAN_AND_MEAN", "HAVE_SCHANNEL",'MARIADB_SYSTEM_TYPE="Windows"', "_CRT_SECURE_NO_WARNINGS" }
		flags { "MultiProcessorCompile" }
		files { "./win-iconv/win_iconv.c", "./libmariadb/win32_errmsg.c",  "./libmariadb/secure/schannel.c", 
				"./libmariadb/secure/ma_schannel.c", "./libmariadb/secure/schannel_certs.c", }
		includedirs {
			"./libmariadb",
			"./win-iconv",
		}
	filter "system:bsd"
		buildoptions { "-O2 -fPIC" }
		defines { "HAVE_OPENSSL", "LIBICONV_PLUG", 'MARIADB_SYSTEM_TYPE="freeBSD"' }
		files { "./libmariadb/secure/openssl.c" }

	filter "system:linux"
		buildoptions { "-O2 -fPIC"}
		defines { "HAVE_OPENSSL", "LIBICONV_PLUG", 'MARIADB_SYSTEM_TYPE="Linux"' }
		files { "./libmariadb/secure/openssl.c" }
