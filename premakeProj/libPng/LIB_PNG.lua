project "LibPNG"
	language "C++"
	kind "StaticLib"
	targetname "libpng"

	targetdir "../../Libs/lib/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	externalincludedirs {
		"%{!wks.location}/vendor/zlib"
	}

    includedirs {
		"./"
	}

	vpaths {
		["Headers/*"] = "*.h",
		["Sources/*"] = "*.c",
		["*"] = "*.lua"
	}

	files {
		"%{!wks.location}/vendor/libpng/*.lua",
		"%{!wks.location}/vendor/libpng/*.h",
		"%{!wks.location}/vendor/libpng/*.c"
	}

	excludes {
		"%{!wks.location}/vendor/libpng/example.c",
		"%{!wks.location}/vendor/libpng/pngtest.c"
	}

	defines { "_LIB" }

	defines { "verbose=-1" }    -- Stop "bit length overflow" warning

	filter "system:Mac*"
		defines { "HAVE_UNISTD_H" }
