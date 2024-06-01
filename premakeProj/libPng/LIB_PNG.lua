project "LibPNG"
	language "C++"
	kind "StaticLib"
	targetname "libpng"

	targetdir "../Out/%{cfg.buildcfg}"
	objdir "../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../Out"

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
		"example.c",
		"pngtest.c"
	}

	defines { "_LIB" }

	defines { "verbose=-1" }    -- Stop "bit length overflow" warning

	filter "system:Mac*"
		defines { "HAVE_UNISTD_H" }
