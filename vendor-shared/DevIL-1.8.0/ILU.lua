project "LibILU"
	kind "StaticLib"
	language "C"
	warnings "Extra"

	targetdir "../../Out/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	includedirs {
		"DevIL/src-ILU/include",
		"DevIL/include"
	}

	vpaths {
		["Headers"] = { "**.h" },
		["Sources"] = { "**.c", "**.cpp" },
		["Docs"] = "**.md"
	}

	files {
		"DevIL/src-ILU/include/**.h",
		"DevIL/include/**.h",
		"DevIL/src-ILU/src/**.cpp",
	}

	defines { "IL_STATIC_LIB" }

	filter "configurations:Release"
		defines {"NDEBUG"}

	filter "system:bsd"
		buildoptions { "-m32" }

	filter "configurations:Debug"
		symbols "On"
		defines { "_DEBUG" }

	filter "system:Windows"
		disablewarnings { "4996" }
		characterset "MBCS"
		defines { "WIN32", "_WINDOWS" }
		flags { "MultiProcessorCompile" }
