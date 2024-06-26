project "LibILU"
	kind "StaticLib"
	language "C"
	warnings "Extra"

	targetdir "../../Libs/lib/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	includedirs {
		"%{!wks.location}/vendor/DevIL/DevIL/src-ILU/include",
		"%{!wks.location}/vendor/DevIL/DevIL/include"
	}

	vpaths {
		["Headers"] = { "**.h" },
		["Sources"] = { "**.c", "**.cpp" },
		["Docs"] = "**.md"
	}

	files {
		"%{!wks.location}/vendor/DevIL/DevIL/src-ILU/include/**.h",
		"%{!wks.location}/vendor/DevIL/DevIL/include/**.h",
		"%{!wks.location}/vendor/DevIL/DevIL/src-ILU/src/**.cpp",
	}

	defines { "IL_STATIC_LIB" }

	filter "configurations:Release"
		defines {"NDEBUG"}

	filter "configurations:Debug"
		symbols "On"
		defines { "_DEBUG" }

	filter "system:Windows"
		disablewarnings { "4996" }
		defines { "WIN32", "_WINDOWS" }
