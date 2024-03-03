project "LibMariaDB-Connector"
	kind "StaticLib"
	language "C"
	warnings "Extra"
	staticruntime "on"

	targetdir "../../Libs/lib/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	includedirs {
		"%{!wks.location}/vendor/mariadb-connector-c/include",
		"%{!wks.location}/vendor/mariadb-connector-c/zlib",
		"./"
	}

	vpaths {
		["Headers"] = { "**.h" },
		["Sources"] = { "**.c", "**.cpp" },
		["Docs"] = "**.md"
	}

	files {
		"%{!wks.location}/vendor/mariadb-connector-c/include/*.h",
		"%{!wks.location}/vendor/mariadb-connector-c/plugins/auth/my_auth.c",
		"%{!wks.location}/vendor/mariadb-connector-c/plugins/auth/old_password.c",
		"%{!wks.location}/vendor/mariadb-connector-c/plugins/pvio/pvio_socket.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_array.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_charset.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_hashtbl.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_net.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/mariadb_charset.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_time.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_default.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_errmsg.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/mariadb_lib.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_list.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_pvio.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_tls.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_alloc.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_compress.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_init.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_password.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_ll2str.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_sha1.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/mariadb_stmt.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_loaddata.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_stmt_codec.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_string.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_dtoa.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/mariadb_rpl.c",
		"ma_client_plugin.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_io.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/mariadb_dyncol.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/mariadb_async.c",
		"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/ma_context.c",
		"%{!wks.location}/vendor/mariadb-connector-c/zlib/adler32.c",
		"%{!wks.location}/vendor/mariadb-connector-c/zlib/compress.c",
		"%{!wks.location}/vendor/mariadb-connector-c/zlib/crc32.c",
		"%{!wks.location}/vendor/mariadb-connector-c/zlib/deflate.c",
		"%{!wks.location}/vendor/mariadb-connector-c/zlib/gzclose.c",
		"%{!wks.location}/vendor/mariadb-connector-c/zlib/gzlib.c",
		"%{!wks.location}/vendor/mariadb-connector-c/zlib/gzread.c",
		"%{!wks.location}/vendor/mariadb-connector-c/zlib/gzwrite.c",
		"%{!wks.location}/vendor/mariadb-connector-c/zlib/infback.c",
		"%{!wks.location}/vendor/mariadb-connector-c/zlib/inffast.c",
		"%{!wks.location}/vendor/mariadb-connector-c/zlib/inflate.c",
		"%{!wks.location}/vendor/mariadb-connector-c/zlib/inftrees.c",
		"%{!wks.location}/vendor/mariadb-connector-c/zlib/trees.c",
		"%{!wks.location}/vendor/mariadb-connector-c/zlib/uncompr.c",
		"%{!wks.location}/vendor/mariadb-connector-c/zlib/zutil.c",
	}

	defines { "HAVE_COMPRESS", "LIBMARIADB", "THREAD", "HAVE_TLS", 'SIZEOF_CHARP=4', 'MARIADB_MACHINE_TYPE="i386"' }

	filter "configurations:Release"
		defines { "NDEBUG", "DBUG_OFF" }

	filter "configurations:Debug"
		defines { "_DEBUG" }

	filter "system:Windows"
		disablewarnings { "4996" }
		defines { "WIN32", "_WINDOWS", "WIN32_LEAN_AND_MEAN", "HAVE_SCHANNEL",'MARIADB_SYSTEM_TYPE="Windows"', "_CRT_SECURE_NO_WARNINGS" }
		files { 
			"%{!wks.location}/vendor/mariadb-connector-c/win-iconv/win_iconv.c",
			"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/win32_errmsg.c",
			"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/secure/schannel.c", 
			"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/secure/ma_schannel.c",
			"%{!wks.location}/vendor/mariadb-connector-c/libmariadb/secure/schannel_certs.c",
		}
		includedirs {
			"%{!wks.location}/vendor/mariadb-connector-c/libmariadb",
			"%{!wks.location}/vendor/mariadb-connector-c/win-iconv",
		}
		postbuildcommands {
			"{COPYFILE} %[%{!wks.location}/premakeProj/mariadb-connector-c/*.h] %[%{!wks.location}Libs/include/]",
			"{COPYFILE} %[%{!wks.location}vendor/mariadb-connector-c/include/*.h] %[%{!wks.location}Libs/include/]",
			"{MKDIR} %{!wks.location}/Libs/include/mariadb",
			"{MKDIR} %{!wks.location}/Libs/include/mysql",
			"{COPYDIR} %[%{!wks.location}/vendor/mariadb-connector-c/include/mariadb] %[%{!wks.location}/Libs/include/mariadb]",
			"{COPYDIR} %[%{!wks.location}/vendor/mariadb-connector-c/include/mysql] %[%{!wks.location}/Libs/include/mysql]"
		}

	filter "system:not windows"
		postbuildcommands {
			"{COPYFILE} %{!wks.location}/premakeProj/mariadb-connector-c/*.h %{!wks.location}/Libs/include",
			"{COPYFILE} %{!wks.location}/vendor/mariadb-connector-c/include/*.h %{!wks.location}/Libs/include",
			"{MKDIR} %{!wks.location}/Libs/include/mariadb",
			"{MKDIR} %{!wks.location}/Libs/include/mysql",
			"{COPYFILE} %{!wks.location}/vendor/mariadb-connector-c/include/mariadb/*.h %{!wks.location}/Libs/include/mariadb",
			"{COPYFILE} %{!wks.location}/vendor/mariadb-connector-c/include/mysql/*.h %{!wks.location}/Libs/include/mysql"
		}

	filter "system:bsd"
		buildoptions { "-fPIC" }
		defines { "HAVE_OPENSSL", "LIBICONV_PLUG", 'MARIADB_SYSTEM_TYPE="freeBSD"' }
		files { "%{!wks.location}/vendor/mariadb-connector-c/libmariadb/secure/openssl.c" }

	filter "system:linux"
		buildoptions { "-fPIC" }
		defines { "HAVE_OPENSSL", "LIBICONV_PLUG", 'MARIADB_SYSTEM_TYPE="Linux"' }
		files { "%{!wks.location}/vendor/mariadb-connector-c/libmariadb/secure/openssl.c" }
