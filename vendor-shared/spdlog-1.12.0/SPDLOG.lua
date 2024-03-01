project "LibSpdLog"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	warnings "Extra"
	staticruntime "on"

	targetdir "../../Out/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	defines { "SPDLOG_COMPILED_LIB", "SPDLOG_FMT_EXTERNAL" }

	includedirs {
		"./include/"
	}

	vpaths {
		["Headers/*"] = { "**.h" },
		["Sources/*"] = { "**.cpp" },
		["Docs"] = "**.md"
	}

	externalincludedirs { 
		"../../vendor-shared/fmt-10.1.1/include",
	}

	files {
		"include/**.h",
		"src/**.cpp",
	}

	removefiles {
		"src/bundled_fmtlib_format.cpp",
	}

	filter "system:Windows"
		disablewarnings { "4324", "4100" }
