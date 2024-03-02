project "LibIL"
	kind "StaticLib"
	language "C"
	warnings "Extra"
	characterset "Unicode"

	targetdir "../../Out/%{cfg.buildcfg}"
	objdir "../../Obj/%{prj.name}/%{cfg.buildcfg}"
	location "../../Out"

	includedirs {
		"DevIL/src-IL/include",
		"DevIL/include",
		"../jpeg-9e"
	}

	defines { "IL_STATIC_LIB", "JPEGSTATIC", "HAVE_CONFIG_H" }

	vpaths {
		["Headers"] = { "**.h" },
		["Sources"] = { "**.c", "**.cpp" },
		["Docs"] = "**.md"
	}

	files {
		"DevIL/src-IL/include/**.h",
		"DevIL/include/**.h",
		"DevIL/src-IL/src/**.cpp",
	}

	filter "configurations:Release"
		defines { "NDEBUG" }

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
