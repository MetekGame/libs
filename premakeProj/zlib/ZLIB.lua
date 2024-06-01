project "zlib"
	kind "StaticLib"
	language "C"
	targetname "zlib"

	targetdir "../../Libs/lib/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	vpaths {
		["Headers/*"] = "*.h",
		["Sources/*"] = "*.c",
		["*"] = "*.lua"
	}

	files {
		"%{!wks.location}/vendor/zlib/*.lua",
		"%{!wks.location}/vendor/zlib/*.h",
		"%{!wks.location}/vendor/zlib/*.c"
	}

	excludes {
		"example.c",
		"pngtest.c"
	}

	defines { "_LIB" }

	defines { "verbose=-1" }    -- Stop "bit length overflow" warning

	filter "system:Mac*"
		defines { "HAVE_UNISTD_H" }
