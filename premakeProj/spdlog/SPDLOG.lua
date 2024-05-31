project "LibSpdLog"
	kind "StaticLib"
	language "C++"
	cppdialect "C++17"
	warnings "Extra"
	staticruntime "on"

	targetdir "../../Libs/lib/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	defines { "SPDLOG_COMPILED_LIB", "SPDLOG_FMT_EXTERNAL" }

	includedirs {
		"%{!wks.location}/vendor/spdlog/include/"
	}

	vpaths {
		["Headers/*"] = { "**.h" },
		["Sources/*"] = { "**.cpp" },
		["Docs"] = "**.md"
	}

	externalincludedirs { 
		"%{!wks.location}/vendor/fmt/include/"
	}

	files {
		"%{!wks.location}/vendor/spdlog/include/**.h",
		"%{!wks.location}/vendor/spdlog/src/**.cpp",
	}

	removefiles {
		"%{!wks.location}/vendor/spdlog/src/bundled_fmtlib_format.cpp",
	}
